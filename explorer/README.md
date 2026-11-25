# Evil Tester Talk Explorer

A static search and word explorer for the Markdown in this repository. Results link directly to the original files on GitHub. No content pages, static site generator, database or hosted search service are required.

## Run locally

Requires Node.js 22 or newer. From this folder:

```sh
npm ci
npm test
npm run build
npm run preview
```

Open <http://127.0.0.1:4173/>. Rebuild after editing archive content or the catalogue. The preview server binds to the local machine only. To check GitHub Pages project paths, set `PREVIEW_PREFIX=/eviltester-talks/` before starting the preview, then open <http://127.0.0.1:4173/eviltester-talks/>.

## Search and browse

- Pagefind indexes substantive Markdown directly using its custom-record API. README indexes, images and PDF copies are excluded to avoid indexing the same navigation and material repeatedly. Documents available only as PDFs are not searched.
- Conference/collection and year come from folder paths. Material type comes from filenames and folders. Titles come from Markdown headings, with conference context from the repository README.
- Topic labels are keyword-based suggestions: a matching title or at least three occurrences of a topic rule in the body. They are not manually reviewed classifications.
- The document, session and collection totals open their respective browse lists. Sessions and collections link to their matching documents. The totals always browse the complete archive; filters can then narrow a browse list.
- Search and filters combine. Words match their indexed word forms; wrap a phrase in double quotes to search it together. Terms are quoted internally to prevent Pagefind's automatic shortening of unknown words into unrelated prefix matches. Results have excerpts, and all GitHub links open in a new tab. Search, browse view and filter choices are stored in the URL and support browser back/forward navigation.
- The word cloud and equivalent keyboard-accessible word buttons reflect **all matching documents**, including results beyond the current page. Clicking a word replaces the search text and keeps the filters.
- Word size counts sessions containing the word, rather than total occurrences. Multiple documents in a session count once. Frequency within a session breaks ties when choosing which words to show; it does not increase the session count. Session grouping is inferred from folders (including dated events, keynotes, workshops and tutorials), and can be overridden. Repeated versions delivered at different events remain separate sessions.
- Common English words, author/site names and generic testing/archive words are excluded from the cloud. Search still includes those words. Terms are lowercase literal words; synonyms and plurals are not merged in the cloud.

## Edit the catalogue

`catalogue.json` contains readable conference names, topic patterns, `hideFromWordCloud` (words to hide from the cloud while keeping them searchable), and optional overrides. Override keys are repository-relative document paths or directory prefixes. More specific entries take priority.

For example, add this inside `overrides`:

```json
{
  "sigist/2004/2004-12-07": {
    "topics": ["Communication & NLP"],
    "talk": "sigist-december-2004"
  },
  "some-event/2020/supporting/private-draft.md": {
    "exclude": true
  }
}
```

Supported override fields: `title`, `topics`, `conference`, `year`, `type`, `talk`, `exclude`. A `topics` override replaces inferred topics. Keep years as strings. `repository` sets the GitHub repository URL; `githubBranch` selects the branch used in content links (currently `main`).

## GitHub Pages

The `explorer-pages.yml` workflow builds, tests and deploys `explorer/dist` when Markdown, explorer files or the workflow change on `main`. It can also be run manually.

In repository **Settings → Pages → Build and deployment**, select **GitHub Actions** as the source. The expected default project URL is <https://eviltester.github.io/eviltester-talks/>. Adding the workflow alone does not enable Pages or publish anything until it is pushed and run with Pages configured.

All asset URLs are relative, supporting the project subpath or a custom domain. Generated output and dependencies are ignored by Git; GitHub Actions publishes the build artifact.

## Libraries

- [Pagefind](https://pagefind.app/) — static full-text index and search API.
- [d3-cloud](https://github.com/jasondavies/d3-cloud) — word-cloud placement.
- [markdown-it](https://github.com/markdown-it/markdown-it) — Markdown text extraction.
- [esbuild](https://esbuild.github.io/) — bundles the browser code and word-cloud library.

The build embeds the browser libraries' license notices in an expandable Library credits panel in the footer. The notices appear in a scrollable, keyboard-focusable div. Any upstream license comments emitted by esbuild are also preserved. No third-party CDN requests, API keys or analytics are used.
