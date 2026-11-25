import CloudLayout from 'd3-cloud';
import { filterDocuments, wordCounts, readState, stateQuery, searchQuery } from './explore.mjs';

const $ = id => document.getElementById(id);
const filterKeys = ['topic', 'conference', 'year', 'type'];
const pageSize = 15;
let documents = [], matches = [], shown = pageSize, request = 0, timer, cloudTimer, searchEngine;
let state = readState(location.search);
let currentWords = [];
const byId = new Map();

function el(tag, className, text) {
  const element = document.createElement(tag);
  if (className) element.className = className;
  if (text !== undefined) element.textContent = text;
  return element;
}

function syncInputs() {
  $('query').value = state.q;
  for (const key of filterKeys) {
    if (state[key] && ![...$(key).options].some(option => option.value === state[key])) $(key).add(new Option(state[key], state[key]));
    $(key).value = state[key];
  }
}

function updateAddress(mode) {
  const query = stateQuery(state);
  const url = location.pathname + (query ? '?' + query : '') + location.hash;
  if (url !== location.pathname + location.search + location.hash) history[mode === 'push' ? 'pushState' : 'replaceState']({}, '', url);
}

function internalLink(label, nextState, className = '') {
  const link = el('a', className, label);
  const query = stateQuery(nextState);
  link.href = location.pathname + (query ? '?' + query : '');
  link.addEventListener('click', event => {
    if (event.button !== 0 || event.metaKey || event.ctrlKey || event.shiftKey || event.altKey) return;
    event.preventDefault();
    clearTimeout(timer);
    state = { ...nextState };
    syncInputs();
    refresh('push');
  });
  return link;
}

function renderBrowseLinks() {
  const sessions = new Set(documents.map(doc => doc.talk)).size;
  const collections = new Set(documents.map(doc => doc.conference)).size;
  const links = [
    internalLink(`${documents.length} documents`, readState('')),
    internalLink(`${sessions} sessions`, { ...readState(''), view: 'sessions' }),
    internalLink(`${collections} collections`, { ...readState(''), view: 'collections' })
  ];
  const active = state.view === 'sessions' ? 1 : state.view === 'collections' ? 2 : 0;
  links[active].setAttribute('aria-current', 'page');
  $('archive-stats').replaceChildren(links[0], el('span', 'divider', '/'), links[1], el('span', 'divider', '/'), links[2]);
}

async function engine() {
  if (!searchEngine) searchEngine = import(new URL('./pagefind/pagefind.js', location.href).href).then(async module => {
    await module.options({ excerptLength: 35 });
    return module;
  });
  return searchEngine;
}

function updateFacets(searchDocs) {
  for (const key of filterKeys) {
    const counts = new Map();
    for (const doc of filterDocuments(searchDocs, state, key)) {
      for (const value of key === 'topic' ? doc.topics : [doc[key]]) counts.set(value, (counts.get(value) || 0) + 1);
    }
    // Keep every choice available, including zero-count values, so filters never trap the user.
    for (const option of [...$(key).options].slice(1)) option.textContent = `${option.value} (${counts.get(option.value) || 0})`;
  }
}

function activeFilters() {
  $('active-filters').replaceChildren();
  for (const key of ['q', ...filterKeys, 'session']) {
    if (!state[key]) continue;
    const label = key === 'session' ? (documents.find(doc => doc.talk === state.session)?.event || state.session) : state[key];
    const chip = el('button', 'filter-chip', `${key === 'q' ? 'Search: ' : ''}${label} ×`);
    chip.type = 'button';
    chip.setAttribute('aria-label', `Remove ${key}: ${state[key]}`);
    chip.addEventListener('click', () => { state[key] = ''; syncInputs(); refresh('push'); });
    $('active-filters').append(chip);
  }
}

function chooseWord(word) {
  clearTimeout(timer);
  state.q = word;
  syncInputs();
  refresh('push');
}

function renderWords() {
  const list = $('word-list');
  list.replaceChildren();
  for (const word of currentWords) {
    const button = el('button', 'word-button', word.text);
    button.type = 'button';
    button.setAttribute('aria-label', `Search for ${word.text}, in ${word.count} matching sessions`);
    button.append(el('span', '', String(word.count)));
    button.addEventListener('click', () => chooseWord(word.text));
    list.append(button);
  }
  drawCloud();
}

function drawCloud() {
  const container = $('cloud');
  container.replaceChildren();
  if (!currentWords.length) { container.append(el('p', 'word-intro', 'No words to explore in this selection.')); return; }
  const width = Math.max(150, container.clientWidth), height = container.clientHeight;
  let seed = 42;
  const layout = new CloudLayout().size([width, height]).overflow(false).random(() => {
    seed = (1664525 * seed + 1013904223) >>> 0;
    return seed / 4294967296;
  });
  const max = currentWords[0].count;
  const svg = document.createElementNS('http://www.w3.org/2000/svg', 'svg');
  svg.setAttribute('viewBox', `0 0 ${width} ${height}`);
  for (const [i, word] of currentWords.slice(0, 45).entries()) {
    const size = Math.max(12, Math.min(width / 9, 16 + 29 * Math.sqrt(word.count / max)));
    const sprite = layout.getSprite(word.text, { size, font: 'Segoe UI', weight: 650, padding: 3, rotate: 0, datum: word });
    if (!sprite) continue;
    const placed = layout.place(sprite);
    if (!placed) continue;
    const text = document.createElementNS(svg.namespaceURI, 'text');
    text.textContent = word.text;
    text.setAttribute('transform', `translate(${placed.x + width / 2},${placed.y + height / 2})`);
    text.setAttribute('text-anchor', 'middle');
    text.setAttribute('font-size', String(size));
    text.setAttribute('fill', ['#ffda36', '#ff4444', '#ffffff', '#bdbdbd'][i % 4]);
    text.addEventListener('click', () => chooseWord(word.text));
    svg.append(text);
  }
  container.append(svg);
}

function excerptNode(text) {
  const paragraph = el('p', 'excerpt');
  // Pagefind supplies escaped text with mark tags. Copy text and only the mark elements.
  const template = document.createElement('template');
  template.innerHTML = text;
  for (const child of template.content.childNodes) {
    if (child.nodeType === Node.ELEMENT_NODE && child.tagName === 'MARK') paragraph.append(el('mark', '', child.textContent));
    else paragraph.append(document.createTextNode(child.textContent));
  }
  return paragraph;
}

function renderResults() {
  const ordered = [...matches];
  const sort = $('sort').value;
  if (!state.q || sort !== 'relevance') ordered.sort((a, b) => {
    const year = (Number(a.doc.year) || 0) - (Number(b.doc.year) || 0);
    return (sort === 'oldest' ? year : -year) || a.doc.conference.localeCompare(b.doc.conference) || a.doc.title.localeCompare(b.doc.title);
  });
  const count = matches.length, sessions = new Set(matches.map(item => item.doc.talk)).size;
  const view = state.view;
  const groups = new Map();
  if (view) for (const item of ordered) {
    const key = view === 'sessions' ? item.doc.talk : item.doc.conference;
    if (!groups.has(key)) groups.set(key, []);
    groups.get(key).push(item.doc);
  }
  const documentCount = `${count.toLocaleString()} ${count === 1 ? 'document' : 'documents'}`;
  $('result-count').textContent = (view ? `${groups.size} ${view} · ${documentCount}` : `${documentCount} · ${sessions} ${sessions === 1 ? 'session' : 'sessions'}`) + (state.q ? ` matching “${state.q}”` : '');
  $('results-heading').textContent = view === 'sessions' ? 'Sessions' : view === 'collections' ? 'Collections' : state.q ? 'Search results' : 'Documents';
  $('results').replaceChildren();
  if (view) for (const [key, docs] of [...groups].slice(0, shown)) {
    const article = el('article', 'result-card group-card');
    const representative = docs.find(doc => doc.type === 'Slides') || docs[0];
    const title = view === 'collections' ? key : representative.title;
    const target = view === 'collections' ? { ...state, view: '', conference: key, session: '' } : { ...state, view: '', session: key };
    const heading = el('h3');
    heading.append(internalLink(title, target));
    const meta = el('div', 'card-meta');
    meta.append(el('span', 'type-label', view === 'sessions' ? 'Session' : 'Collection'));
    const years = [...new Set(docs.map(doc => doc.year))].sort();
    meta.append(el('span', 'year', years.length === 1 ? years[0] : `${years[0]}–${years.at(-1)}`));
    if (view === 'sessions') meta.append(el('span', '', representative.conference));
    article.append(meta, heading);
    if (view === 'sessions' && representative.event) article.append(el('p', 'event-name', representative.event));
    const sessionCount = new Set(docs.map(doc => doc.talk)).size;
    article.append(el('p', 'excerpt', `${docs.length} ${docs.length === 1 ? 'document' : 'documents'}${view === 'collections' ? ` across ${sessionCount} ${sessionCount === 1 ? 'session' : 'sessions'}` : ''} · ${[...new Set(docs.map(doc => doc.type))].join(', ')}`));
    const topics = el('div', 'tags');
    for (const topic of [...new Set(docs.flatMap(doc => doc.topics))]) topics.append(el('span', 'tag', topic));
    article.append(topics);
    $('results').append(article);
  }
  else for (const { doc, excerpt } of ordered.slice(0, shown)) {
    const article = el('article', 'result-card');
    const meta = el('div', 'card-meta');
    meta.append(el('span', 'type-label', doc.type), el('span', 'year', doc.year), el('span', '', doc.conference));
    const heading = el('h3');
    const link = el('a', '', doc.title);
    link.href = doc.url;
    link.target = '_blank';
    link.rel = 'noopener noreferrer';
    link.setAttribute('aria-label', `${doc.title} (opens on GitHub in a new tab)`);
    heading.append(link);
    article.append(meta, heading);
    if (doc.event) article.append(el('p', 'event-name', doc.event));
    article.append(excerpt ? excerptNode(excerpt) : el('p', 'excerpt', doc.excerpt + '…'));
    const tags = el('div', 'tags');
    for (const topic of doc.topics) {
      const button = el('button', 'tag', topic);
      button.type = 'button';
      button.setAttribute('aria-label', `Filter by topic: ${topic}`);
      button.addEventListener('click', () => { state.topic = topic; syncInputs(); refresh('push'); });
      tags.append(button);
    }
    article.append(tags);
    $('results').append(article);
  }
  if (!count) {
    const empty = el('div', 'empty');
    empty.append(el('h3', '', 'No matching documents'), el('p', '', 'Try another word, remove a filter or reset the search.'));
    $('results').append(empty);
  }
  const itemCount = view ? groups.size : count;
  $('more').hidden = itemCount <= shown;
  if (itemCount > shown) $('more').textContent = `Show more ${view || 'documents'} (${itemCount - shown} remaining)`;
}

async function refresh(historyMode = 'replace') {
  const ticket = ++request;
  state.q = state.q.trim();
  if (historyMode) updateAddress(historyMode);
  renderBrowseLinks();
  activeFilters();
  $('results').setAttribute('aria-busy', 'true');
  if (state.q) $('result-count').textContent = 'Searching…';
  try {
    let searchMatches;
    if (state.q) {
      const query = searchQuery(state.q);
      const response = query ? await (await engine()).search(query) : { results: [] };
      if (ticket !== request) return;
      // Fetch in batches to avoid hundreds of simultaneous fragment requests for broad queries.
      searchMatches = [];
      for (let i = 0; i < response.results.length; i += 12) {
        const batch = await Promise.all(response.results.slice(i, i + 12).map(result => result.data()));
        if (ticket !== request) return;
        for (const result of batch) {
          const doc = byId.get(result.meta.document_id);
          if (doc) searchMatches.push({ doc, excerpt: result.excerpt });
        }
      }
    } else searchMatches = documents.map(doc => ({ doc }));
    if (ticket !== request) return;
    const allowed = new Set(filterDocuments(searchMatches.map(item => item.doc), state).map(doc => doc.id));
    matches = searchMatches.filter(item => allowed.has(item.doc.id));
    shown = pageSize;
    updateFacets(searchMatches.map(item => item.doc));
    renderResults();
    currentWords = wordCounts(matches.map(item => item.doc));
    renderWords();
  } catch (error) {
    if (ticket !== request) return;
    console.error(error);
    $('result-count').textContent = 'Search could not load. Try again, or clear the search to browse.';
    $('results').replaceChildren(el('p', 'empty', 'You can still read all materials on GitHub using the link above.'));
    $('more').hidden = true;
    currentWords = [];
    renderWords();
    searchEngine = undefined;
  } finally { if (ticket === request) $('results').setAttribute('aria-busy', 'false'); }
}

$('search-form').addEventListener('submit', event => {
  event.preventDefault(); clearTimeout(timer); state.q = $('query').value; refresh('push');
});
$('query').addEventListener('input', () => {
  clearTimeout(timer); ++request;
  timer = setTimeout(() => { state.q = $('query').value; refresh(); }, 250);
});
for (const key of filterKeys) $(key).addEventListener('change', () => {
  clearTimeout(timer); state.q = $('query').value; state[key] = $(key).value; refresh('push');
});
$('sort').addEventListener('change', renderResults);
$('more').addEventListener('click', () => {
  const previous = $('results').querySelectorAll('article').length;
  shown += pageSize; renderResults();
  $('results').querySelectorAll('h3 a')[previous]?.focus({ preventScroll: true });
});
$('reset').addEventListener('click', () => {
  clearTimeout(timer); state = readState(''); $('sort').value = 'relevance'; syncInputs(); refresh('push');
});
window.addEventListener('popstate', () => { clearTimeout(timer); state = readState(location.search); syncInputs(); refresh(null); });
window.addEventListener('resize', () => { clearTimeout(cloudTimer); cloudTimer = setTimeout(drawCloud, 150); });
const narrowScreen = window.matchMedia('(max-width: 720px)');
const wordTools = document.querySelector('.word-tools');
wordTools.open = !narrowScreen.matches;
narrowScreen.addEventListener('change', event => { wordTools.open = !event.matches; });

try {
  const response = await fetch(new URL('./catalogue.json', location.href));
  if (!response.ok) throw new Error(`Catalogue returned ${response.status}`);
  ({ documents } = await response.json());
  for (const doc of documents) byId.set(doc.id, doc);
  for (const key of filterKeys) {
    const values = [...new Set(documents.flatMap(doc => key === 'topic' ? doc.topics : [doc[key]]))];
    values.sort(key === 'year' ? (a, b) => b.localeCompare(a) : (a, b) => a.localeCompare(b));
    for (const value of values) $(key).add(new Option(value, value));
    $(key).disabled = false;
  }
  renderBrowseLinks();
  $('query').disabled = false; $('search-button').disabled = false;
  syncInputs();
  await document.fonts.ready;
  await refresh(null);
} catch (error) {
  console.error(error);
  $('archive-stats').textContent = 'The archive catalogue could not load.';
  $('result-count').textContent = 'Please reload, or browse the materials on GitHub.';
  $('results').setAttribute('aria-busy', 'false');
}
