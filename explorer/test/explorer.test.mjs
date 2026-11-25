import test from 'node:test';
import assert from 'node:assert/strict';
import { readFileSync } from 'node:fs';
import { extractContent, meaningfulWords, inferTopics, inferType, talkKey } from '../scripts/content.mjs';
import { filterDocuments, wordCounts, readState, stateQuery, searchQuery } from '../src/explore.mjs';

test('index prose and code, excluding frontmatter, image captions, comments and URL destinations', () => {
  const result = extractContent('---\nmarp: true\ntitle: private metadata\n---\n# Testing ambiguity\n<!-- source-only comment -->\n[Meta Model](https://example.com/private-token) helps.\n![Unsearchable caption](image.png)\n\n```js\nfetchChallenge();\n```');
  assert.equal(result.title, 'Testing ambiguity');
  assert.match(result.text, /Meta Model helps/);
  assert.match(result.text, /fetchChallenge/);
  assert.doesNotMatch(result.text, /private|Unsearchable|source-only|marp|image.png/);
});

test('word lists remove boilerplate and repeated words while retaining technical terms', () => {
  assert.deepEqual(meaningfulWords('The testing testing Selenium selenium API APIs rapport, rapport.', ['testing']), ['api', 'apis', 'rapport', 'selenium']);
});

test('hideFromWordCloud hides generic terms without removing topic words or searchable prose', () => {
  const config = JSON.parse(readFileSync(new URL('../catalogue.json', import.meta.url), 'utf8'));
  const { text } = extractContent('# NLP\n\nBooks ask find read asked finding reading. Ambiguity rapport automation Selenium security.');
  assert.deepEqual(meaningfulWords(text, config.hideFromWordCloud), ['ambiguity', 'automation', 'nlp', 'rapport', 'security', 'selenium']);
  assert.match(text, /Books ask find read asked finding reading/);
});

test('older slide directives do not leak into excerpts', () => {
  const result = extractContent('footer: @EvilTester\nslidenumbers: true\n<!-- page_number: true -->\n# Security testing\n\nA useful idea.');
  assert.equal(result.title, 'Security testing');
  assert.equal(result.text, 'Security testing\n\nA useful idea.');
  assert.equal(inferType('browserstack/2025/community-day/slides/skills-marp.md'), 'Slides');
});

test('topic labels require a title match or sustained body discussion', () => {
  const rules = { Security: ['\\bsecurity\\b'] };
  assert.deepEqual(inferTopics('Security in testing', '', rules), ['Security']);
  assert.deepEqual(inferTopics('A talk', 'One security mention', rules), []);
  assert.deepEqual(inferTopics('A talk', 'Security security security', rules), ['Security']);
});

test('words count once per session across multiple materials', () => {
  const docs = [
    { talk: 'sigist/2004/2004-12-07', terms: ['rapport', 'modelling'] },
    { talk: 'sigist/2004/2004-12-07', terms: ['rapport'] },
    { talk: 'ics-test/2006/tutorial', terms: ['rapport'] }
  ];
  assert.deepEqual(wordCounts(docs), [{ text: 'rapport', count: 2 }, { text: 'modelling', count: 1 }]);
});

test('compound filters and contextual facet counts retain multi-topic documents', () => {
  const docs = [
    { id: 'a', topics: ['Security', 'Web'], year: '2020', conference: 'EuroSTAR', type: 'Slides' },
    { id: 'b', topics: ['Web'], year: '2019', conference: 'EuroSTAR', type: 'Transcript' },
    { id: 'c', topics: ['Security'], year: '2020', conference: 'SIGIST', type: 'Slides' }
  ];
  const state = { topic: 'Security', year: '2020', conference: 'EuroSTAR', type: '' };
  assert.deepEqual(filterDocuments(docs, state).map(doc => doc.id), ['a']);
  assert.deepEqual(filterDocuments(docs, state, 'conference').map(doc => doc.id), ['a', 'c']);
  assert.equal(filterDocuments(docs, { topic: 'Nonexistent' }).length, 0);
});

test('single-session word selection favours recurring terms without inflating session counts', () => {
  const words = wordCounts([{ talk: 'one', terms: ['aardvark', 'rapport'], wordWeights: { rapport: 20 } }], 1);
  assert.deepEqual(words, [{ text: 'rapport', count: 1 }]);
});

test('shared URLs preserve punctuation and special characters in search and filters', () => {
  const state = { q: '"meta model" & NLP', topic: 'Communication & NLP', conference: 'Øredev', year: '2004', type: 'Transcript', session: '', view: '' };
  assert.deepEqual(readState('?' + stateQuery(state)), state);
  assert.equal(stateQuery(readState('')), '');
});

test('search preserves phrases and prevents unknown-word prefix fallback', () => {
  assert.equal(searchQuery('technical testing'), '"technical" "testing"');
  assert.equal(searchQuery('“meta model” ambiguity'), '"meta model" "ambiguity"');
  assert.equal(searchQuery('zzzxqvnomatchingwords'), '"zzzxqvnomatchingwords"');
  assert.equal(searchQuery('&& ""'), '');
});

test('session selection combines with other filters and survives a shared browse URL', () => {
  const state = { ...readState(''), session: 'sigist/2004/2004-12-07', view: 'sessions', type: 'Slides' };
  assert.deepEqual(readState('?' + stateQuery(state)), state);
  assert.deepEqual(filterDocuments([
    { id: 'december', talk: state.session, type: 'Slides' },
    { id: 'june', talk: 'sigist/2004', type: 'Slides' },
    { id: 'notes', talk: state.session, type: 'Presenter notes' }
  ], state).map(doc => doc.id), ['december']);
  assert.equal(readState('?view=invalid').view, '');
});

test('grouping separates dated events and keynote/workshop sessions', () => {
  assert.equal(talkKey('sigist/2004/2004-12-07/transcripts/talk-transcript.md'), talkKey('sigist/2004/2004-12-07/tutorial/slides.md'));
  assert.notEqual(talkKey('sigist/2004/talk/slides.md'), talkKey('sigist/2004/2004-12-07/tutorial/slides.md'));
  assert.notEqual(talkKey('stareast/2014/keynote/slides.md'), talkKey('stareast/2014/tutorial/slides.md'));
  assert.equal(inferType('test-tribe/2019/transcripts/transcript.md'), 'Transcript');
  assert.equal(inferType('ics-test/2006/handout/handout.md'), 'Handout');
});
