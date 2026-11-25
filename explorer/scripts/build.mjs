import { readFile, writeFile, readdir, mkdir, rm, copyFile } from 'node:fs/promises';
import path from 'node:path';
import { fileURLToPath } from 'node:url';
import { build } from 'esbuild';
import * as pagefind from 'pagefind';
import { extractContent, wordFrequencies, inferType, inferTopics, talkKey, humanise } from './content.mjs';

const root = fileURLToPath(new URL('../../', import.meta.url));
const explorer = path.join(root, 'explorer');
const output = path.join(explorer, 'dist');
if (path.dirname(output) !== explorer || path.basename(output) !== 'dist') throw new Error('Unexpected build directory');
const config = JSON.parse(await readFile(path.join(explorer, 'catalogue.json'), 'utf8'));
const archiveTitles = Object.entries(config.eventTitles || {}).map(([prefix, title]) => ({ prefix, title }));
archiveTitles.sort((a, b) => b.prefix.length - a.prefix.length);

async function walk(directory) {
  const files = [];
  for (const item of (await readdir(directory, { withFileTypes: true })).sort((a, b) => a.name.localeCompare(b.name))) {
    if (item.name.startsWith('.') || ['explorer', 'node_modules', 'output'].includes(item.name)) continue;
    const full = path.join(directory, item.name);
    if (item.isDirectory()) files.push(...await walk(full));
    else if (item.isFile() && /\.md$/i.test(item.name) && !/^readme\.md$/i.test(item.name)) files.push(full);
  }
  return files;
}

await rm(output, { recursive: true, force: true });
await mkdir(output, { recursive: true });
const creation = await pagefind.createIndex();
if (creation.errors?.length || !creation.index) throw new Error(JSON.stringify(creation.errors));
const { index } = creation;
const documents = [];
try {
  for (const full of await walk(root)) {
    const relative = path.relative(root, full).replaceAll('\\', '/');
    const parts = relative.split('/');
    const matchingOverrides = Object.entries(config.overrides).filter(([prefix]) => relative === prefix || relative.startsWith(prefix.replace(/\/$/, '') + '/'))
      .sort(([a], [b]) => a.length - b.length);
    const override = Object.assign({}, ...matchingOverrides.map(([, value]) => value));
    if (override.exclude) continue;
    const { title, text } = extractContent(await readFile(full, 'utf8'));
    if (!text.trim()) continue;
    const frequencies = wordFrequencies(text, config.hideFromWordCloud);
    const doc = {
      id: relative, path: relative,
      title: override.title || title || humanise(path.basename(relative, '.md')),
      event: archiveTitles.find(item => relative === item.prefix || relative.startsWith(item.prefix + '/'))?.title || '',
      conference: override.conference || config.conferences[parts[0]] || humanise(parts[0]),
      year: override.year || parts.find(part => /^(19|20)\d{2}$/.test(part)) || 'Undated',
      type: override.type || inferType(relative),
      talk: override.talk || talkKey(relative),
      url: `${config.repository}/blob/${config.githubBranch}/${parts.map(encodeURIComponent).join('/')}`,
      excerpt: text.slice(0, 260).replace(/\s+/g, ' ').trim(),
      topics: override.topics || inferTopics(title, text, config.topics),
      terms: [...frequencies.keys()].sort(),
      wordWeights: Object.fromEntries([...frequencies].filter(([, count]) => count > 1))
    };
    const result = await index.addCustomRecord({
      url: doc.url, content: text, language: 'en',
      meta: { title: doc.title, document_id: doc.id, event: doc.event },
      filters: { topic: doc.topics, conference: [doc.conference], year: [doc.year], type: [doc.type] }
    });
    if (result.errors?.length) throw new Error(`${relative}: ${result.errors.join(', ')}`);
    documents.push(doc);
  }
  const written = await index.writeFiles({ outputPath: path.join(output, 'pagefind') });
  if (written.errors?.length) throw new Error(written.errors.join(', '));
} finally { await pagefind.close(); }
await writeFile(path.join(output, 'catalogue.json'), JSON.stringify({ documents }));
await copyFile(path.join(explorer, 'src/style.css'), path.join(output, 'style.css'));
await writeFile(path.join(output, '.nojekyll'), '');
const licenseNotices = (await Promise.all([
  ['d3-cloud', 'LICENSE'], ['pagefind', 'LICENSE/LICENSE'], ['pagefind', 'LICENSE/LICENSE-vscode-ripgrep']
].map(async ([name, file]) =>
  `${name} — ${file}\n${await readFile(path.join(explorer, 'node_modules', name, file), 'utf8')}`
))).join('\n\n---\n\n');
const escapedNotices = licenseNotices.replaceAll('&', '&amp;').replaceAll('<', '&lt;').replaceAll('>', '&gt;');
const html = await readFile(path.join(explorer, 'src/index.html'), 'utf8');
await writeFile(path.join(output, 'index.html'), html.replace('<!--LIBRARY_CREDITS-->', escapedNotices));
await build({ entryPoints: [path.join(explorer, 'src/app.mjs')], outfile: path.join(output, 'app.js'), bundle: true, format: 'esm', minify: true, target: ['es2022'], legalComments: 'linked' });
console.log(`Indexed ${documents.length} documents from ${new Set(documents.map(doc => doc.talk)).size} talk groups across ${new Set(documents.map(doc => doc.conference)).size} collections.`);
