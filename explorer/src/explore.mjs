export function filterDocuments(documents, state, omit = '') {
  return documents.filter(doc => (!state.session || doc.talk === state.session) && ['topic', 'conference', 'year', 'type'].every(key =>
    key === omit || !state[key] || (key === 'topic' ? doc.topics.includes(state[key]) : doc[key] === state[key])
  ));
}

export function wordCounts(documents, limit = 60) {
  const talks = new Map();
  for (const doc of documents) {
    if (!talks.has(doc.talk)) talks.set(doc.talk, new Map());
    for (const word of doc.terms) talks.get(doc.talk).set(word, Math.max(talks.get(doc.talk).get(word) || 0, doc.wordWeights?.[word] || 1));
  }
  const counts = new Map();
  const weights = new Map();
  for (const words of talks.values()) for (const [word, weight] of words) {
    counts.set(word, (counts.get(word) || 0) + 1);
    weights.set(word, (weights.get(word) || 0) + Math.log1p(weight));
  }
  return [...counts].map(([text, count]) => ({ text, count }))
    .sort((a, b) => b.count - a.count || weights.get(b.text) - weights.get(a.text) || a.text.localeCompare(b.text)).slice(0, limit);
}

export function readState(search) {
  const params = new URLSearchParams(search);
  const state = Object.fromEntries(['q', 'topic', 'conference', 'year', 'type', 'session'].map(key => [key, params.get(key) || '']));
  state.view = ['sessions', 'collections'].includes(params.get('view')) ? params.get('view') : '';
  return state;
}

export function searchQuery(query) {
  // Quote individual terms to prevent Pagefind silently shortening unknown words to a prefix.
  // Preserve phrases explicitly enclosed in quotes by the reader.
  return (query.replace(/[“”]/g, '"').match(/"[^"]*"|[^\s"]+/g) || [])
    .filter(term => /[\p{L}\p{N}]/u.test(term))
    .map(term => term.startsWith('"') ? term : `"${term}"`).join(' ');
}

export function stateQuery(state) {
  return new URLSearchParams(Object.entries(state).filter(([, value]) => value)).toString();
}
