# Technical Web Testing 101

Alan Richardson's full Technical Web Testing 101 course: [watch on YouTube](https://www.youtube.com/watch?v=jWwfMo5Ziz0) · [course information](https://www.eviltester.com/page/onlinetraining/techwebtesting101/).

The six-hour recording contains 15 sections and 82 chapters. Each section below includes the associated transcript and a short Markdown slide deck covering the key points. Chapter links open the corresponding part of the full video.

**The section slide decks and overviews contain AI-generated summaries of the recording.** Diagrams have been redrawn to explain the demonstrations. The timestamped section transcripts have been edited from YouTube's automatic English captions to correct obvious recognition errors and spelling, and keep sentences together at chapter and section boundaries.

## Complete course transcript

[Read the edited transcript](transcripts.md) · [PDF edition](exports/transcripts.pdf)

The reading edition combines all 15 sections and 82 chapters, with bulleted summaries, corrected transcription errors, readable paragraphs and 18 illustrations. Each chapter starts with a link to its position in the video, without timestamps in the text. The PDF includes a contents page and chapter bookmarks.

### Rebuilding the PDF

The custom [Python/ReportLab builder](scripts/build_transcripts_pdf.py) reads `transcripts.md` and the local illustrations directly. From this course folder, install its dependency once and run the builder:

```sh
python -m pip install -r scripts/requirements-pdf.txt
python scripts/build_transcripts_pdf.py
```

This writes `exports/transcripts.pdf`. No Pandoc or LaTeX installation is required. The builder follows this document's numbered sections, chapter headings and summary labels, and renders the course's SVG diagrams as vectors. It uses Arial when available, with a built-in Helvetica fallback. Run `python scripts/build_transcripts_pdf.py --help` for alternative input, output and font locations.

## Course sections

| Section | Video start | Duration | Transcript | Summary slides |
|---|---|---|---|---|
| [01 · Introduction](sections/01-introduction/readme.md) | [00:00:00](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=0s) | 00:03:15 | [Transcript](sections/01-introduction/transcript.md) | [Slides](sections/01-introduction/slides.md) |
| [02 · Absolute Basics](sections/02-absolute-basics/readme.md) | [00:03:15](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=195s) | 00:12:30 | [Transcript](sections/02-absolute-basics/transcript.md) | [Slides](sections/02-absolute-basics/slides.md) |
| [03 · Applications to Use for Testing](sections/03-applications-to-use-for-testing/readme.md) | [00:15:45](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=945s) | 00:03:13 | [Transcript](sections/03-applications-to-use-for-testing/transcript.md) | [Slides](sections/03-applications-to-use-for-testing/slides.md) |
| [04 · Modern Browsers](sections/04-modern-browsers/readme.md) | [00:18:58](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=1138s) | 00:37:00 | [Transcript](sections/04-modern-browsers/transcript.md) | [Slides](sections/04-modern-browsers/slides.md) |
| [05 · View Page Source](sections/05-view-page-source/readme.md) | [00:55:58](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=3358s) | 00:30:48 | [Transcript](sections/05-view-page-source/transcript.md) | [Slides](sections/05-view-page-source/slides.md) |
| [06 · Incognito Mode](sections/06-incognito-mode/readme.md) | [01:26:46](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=5206s) | 00:24:03 | [Transcript](sections/06-incognito-mode/transcript.md) | [Slides](sections/06-incognito-mode/slides.md) |
| [07 · RestMud Text Adventure Game](sections/07-restmud-text-adventure-game/readme.md) | [01:50:49](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=6649s) | 00:18:46 | [Transcript](sections/07-restmud-text-adventure-game/transcript.md) | [Slides](sections/07-restmud-text-adventure-game/slides.md) |
| [08 · HTTP Proxies](sections/08-http-proxies/readme.md) | [02:09:35](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=7775s) | 00:30:43 | [Transcript](sections/08-http-proxies/transcript.md) | [Slides](sections/08-http-proxies/slides.md) |
| [09 · Interactive REST API Testing](sections/09-interactive-rest-api-testing/readme.md) | [02:40:18](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=9618s) | 00:43:20 | [Transcript](sections/09-interactive-rest-api-testing/transcript.md) | [Slides](sections/09-interactive-rest-api-testing/slides.md) |
| [10 · Testing JavaScript from the Browser Console](sections/10-testing-javascript-from-the-browser-console/readme.md) | [03:23:38](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=12218s) | 01:34:41 | [Transcript](sections/10-testing-javascript-from-the-browser-console/transcript.md) | [Slides](sections/10-testing-javascript-from-the-browser-console/slides.md) |
| [11 · Mobile Web Testing](sections/11-mobile-web-testing/readme.md) | [04:58:19](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=17899s) | 00:25:05 | [Transcript](sections/11-mobile-web-testing/transcript.md) | [Slides](sections/11-mobile-web-testing/slides.md) |
| [12 · Mobile Testing with Wireshark on Mac](sections/12-mobile-testing-with-wireshark-on-mac/readme.md) | [05:23:24](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=19404s) | 00:17:21 | [Transcript](sections/12-mobile-testing-with-wireshark-on-mac/transcript.md) | [Slides](sections/12-mobile-testing-with-wireshark-on-mac/slides.md) |
| [13 · Virtual Machines](sections/13-virtual-machines/readme.md) | [05:40:45](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20445s) | 00:07:09 | [Transcript](sections/13-virtual-machines/transcript.md) | [Slides](sections/13-virtual-machines/slides.md) |
| [14 · Case Studies](sections/14-case-studies/readme.md) | [05:47:54](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=20874s) | 00:12:03 | [Transcript](sections/14-case-studies/transcript.md) | [Slides](sections/14-case-studies/slides.md) |
| [15 · Final Section](sections/15-final-section/readme.md) | [05:59:57](https://www.youtube.com/watch?v=jWwfMo5Ziz0&t=21597s) | 00:05:09 | [Transcript](sections/15-final-section/transcript.md) | [Slides](sections/15-final-section/slides.md) |

## Original course materials

The originally released slides and exercise notes remain available below. The course was originally sold through Udemy, Teachable, Zenler and New Zenler.

| Material | Markdown | PDF |
|---|---|---|
| Monitoring mobile HTTP traffic with Wireshark | [Notes](wireshark-notes.md) | [PDF](exports/005-TextnotesfortheWiresharkSection.pdf) |
| Incognito mode challenges | [Challenges](incognito-challenges.md) | [PDF](exports/incognito-challenges-txt.pdf) |
| Incognito mode findings | [Summary](incognito-summaries.md) | [PDF](exports/incognito-summaries-txt.pdf) |
| REST testing | [Slides](rest-testing-slides.md) | [PDF](exports/resttesting.pdf) |
| View Page Source findings | [Summary notes](view-page-source-summary.md) | [PDF](exports/summary-notes-txt.pdf) |
| View Page Source challenges | [Challenges](view-page-source-challenges.md) | [PDF](exports/view-page-source-challenges-txt.pdf) |

## Using the recording

The course was created in 2013–2014, with updates through 2020, and published as this full YouTube video on 18 December 2025. Browser interfaces, extensions, prices and download locations in the demonstrations describe that period. The summaries focus on the testing approaches and identify version-dependent behaviour.

The later incognito exercise corrects an assumption from the early browser demo: private windows in the recorded Chrome setup share session state within a profile. The summary slides also distinguish timer callbacks from independent JavaScript threads, and Wi-Fi decryption from HTTPS/TLS decryption.

Chapter headings follow the published video timestamps. Sentences crossing a boundary are kept together in the preceding chapter, and paragraph links refer to the full recording.

Practice application lists supplied with the video: [Test Pages](https://testpages.eviltester.com/reference/other-sites/) · [API Challenges](https://apichallenges.eviltester.com/practice-sites).

[Chapter headings and timings](chapters.json)
