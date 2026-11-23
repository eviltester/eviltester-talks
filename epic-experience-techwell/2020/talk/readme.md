## EPIC Experience 2020 - A Guide to Testing Web Applications

Prepared talk materials for EPIC Experience 2020 in San Diego. The conference was cancelled because of COVID-19, and this talk was not delivered at the event.

More details:

https://www.eviltester.com/conference/epicconference2020_conference/

## Content

- [prepared slides in Markdown](epic-experience-slides.md)
- [prepared slides as PDF](export/epic-experience-slides.pdf)
- [talk planning mind map](epic-slides-how-i-test-web-apps.mm)
- [testing flow diagram](images/basic-flow.png)
- [draw.io diagram source](images/basic-flow.drawio)
- [screenshots and animations](images/)

## Overview

The talk uses a case study of testing Tracks, an open source web application, to explore practical testing decisions, models, tools, coverage, risk, and evidence.

The prepared slides follow environment setup, health checks, planning, reconnaissance, modelling, coverage, technical exploratory testing, and debriefing, with examples of testing notes and screenshots.

## PDF Export

The 84-slide PDF was generated with Marp CLI 4.5.1 and the shared [Marp theme](../marp-theme.css): black backgrounds, red headings, and yellow body text. The original Markdown is unchanged. Animations appear as static images in the PDF.

Run this command from the `talk` folder:

```powershell
npx.cmd --yes --package @marp-team/marp-cli@4.5.1 marp epic-experience-slides.md --pdf --allow-local-files --pdf-outlines --theme ../marp-theme.css --author 'Alan Richardson' --title 'A Guide to Testing Web Applications - EPIC Experience 2020' --description 'Materials prepared for EPIC Experience 2020, cancelled because of COVID-19.' -o export/epic-experience-slides.pdf
```
