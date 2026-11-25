import MarkdownIt from 'markdown-it';

const markdown = new MarkdownIt({ html: false });
const commonWords = new Set(`a about above after again against all also am an and any are aren't as at be because been before being below between both but by can cannot could couldn't did didn't do does doesn't doing don't down during each few for from further get gets getting got had hadn't has hasn't have haven't having he he'd he'll he's her here here's hers herself him himself his how how's i i'd i'll i'm i've if in into is isn't it it's its itself just let's like make makes making may me might more most must mustn't my myself need needs no nor not now of off on once only or other our ours ourselves out over own really same say says see she she'd she'll she's should shouldn't so some such take than that that's the their theirs them themselves then there there's these they they'd they'll they're they've thing things think this those through time times to too under until up us use used uses using very want was wasn't way ways we we'd we'll we're we've well were weren't what what's when when's where where's which while who who's whom why why's will with won't would wouldn't you you'd you'll you're you've your yours yourself yourselves one two three first second next new much many know going actually people something example examples yes yeah okay right good look looking come comes even kind lot sure able different another without within simply often still around give given put based part try working work works done back said rather every`.split(/\s+/));

export function extractContent(source) {
  const body = source.replace(/^\uFEFF/, '').replace(/^---\r?\n[\s\S]*?\r?\n---(?:\r?\n|$)/, '')
    .replace(/^(?:footer|slidenumbers|slide-numbers|paginate|marp|theme):[^\r\n]*\r?\n/gmi, '')
    .replace(/<!--[\s\S]*?-->/g, '')
    .replace(/<[^>]*>/g, ' ');
  const tokens = markdown.parse(body, {});
  const paragraphs = [];
  let title = '';
  for (let i = 0; i < tokens.length; i++) {
    const token = tokens[i];
    if (token.type === 'inline') {
      const text = (token.children || []).filter(t => !['image', 'html_inline'].includes(t.type))
        .map(t => ['softbreak', 'hardbreak'].includes(t.type) ? ' ' : t.content).join('')
        .replace(/https?:\/\/\S+/g, '').replace(/\s+/g, ' ').trim();
      if (text) paragraphs.push(text);
      if (!title && tokens[i - 1]?.type === 'heading_open') title = text;
    } else if (['fence', 'code_block'].includes(token.type)) paragraphs.push(token.content.trim());
  }
  return { title, text: paragraphs.join('\n\n') };
}

export function wordFrequencies(text, hideFromWordCloud = []) {
  const stop = new Set([...commonWords, ...hideFromWordCloud]);
  const words = (text.toLowerCase().match(/[\p{L}][\p{L}\p{N}]*(?:['’-][\p{L}\p{N}]+)*/gu) || [])
    .map(word => word.replace(/[’']/g, "'").replace(/'s$/, ''))
    .filter(word => word.length >= 3 && word.length <= 32 && !stop.has(word));
  const counts = new Map();
  for (const word of words) counts.set(word, (counts.get(word) || 0) + 1);
  return counts;
}

export function meaningfulWords(text, hideFromWordCloud = []) {
  return [...wordFrequencies(text, hideFromWordCloud).keys()].sort();
}

export function inferType(file) {
  if (/transcripts?\//i.test(file) || /transcript/i.test(file.split('/').at(-1))) return 'Transcript';
  if (/speaker-notes|presenter-notes|instructor-notes/i.test(file)) return 'Presenter notes';
  if (/\/slides\//i.test(file) || /slides|deckset|(?:^|[-_])marp\.md$/i.test(file.split('/').at(-1))) return 'Slides';
  if (/handout/i.test(file)) return 'Handout';
  if (/exercises?/i.test(file)) return 'Exercises';
  if (/paper|essay/i.test(file)) return 'Paper';
  if (/abstract/i.test(file)) return 'Abstract';
  return 'Preparation & supporting';
}

export function inferTopics(title, text, topicRules) {
  // Three body occurrences or one title match keeps a passing mention from becoming a category.
  return Object.entries(topicRules).filter(([, patterns]) => patterns.some(pattern =>
    new RegExp(pattern, 'i').test(title) || (text.match(new RegExp(pattern, 'gi')) || []).length >= 3
  )).map(([label]) => label);
}

export function talkKey(file) {
  const parts = file.split('/');
  const year = parts.findIndex(p => /^(19|20)\d{2}$/.test(p));
  const event = parts.slice(0, year < 0 ? 1 : year + 1);
  const session = parts[year + 1];
  if (year >= 0 && /^(?:keynote|workshop|tutorial|\d{4}-\d{2}-\d{2})$/i.test(session || '')) event.push(session);
  return event.join('/');
}

export function humanise(value) {
  return value.replace(/[-_]/g, ' ').replace(/([a-z])([A-Z])/g, '$1 $2').replace(/\b\w/g, letter => letter.toUpperCase());
}
