## EPIC Experience 2020 - Agile Technical Exploratory Testing Workshop

Prepared tutorial materials for EPIC Experience 2020 in San Diego. The full-day workshop was scheduled for 21st April 2020, but the conference was cancelled because of COVID-19 and the tutorial was not delivered at the event.

More details:

https://www.eviltester.com/conference/epicconference2020_conference/

## Content

- [prepared tutorial slides in Markdown](epic-tutorial-slides.md)
- [prepared tutorial slides as PDF](export/epic-tutorial-slides.pdf)
- [tutorial planning mind map](EpicAgileTutorial.mm)
- [exercise mind map](Exercises.mm)
- [supporting diagrams](images/)

## Overview

The workshop brings agile working, exploratory testing, and technical testing together through hands-on application exercises.

The material covers going beyond acceptance criteria, investigating technical risk, using browser developer tools and HTTP proxies, taking testing notes, and communicating findings within an agile process. The application exercises are based on The Pulper.

## PDF Export

The 123-slide PDF was generated with Marp CLI 4.5.1 and the shared [Marp theme](../marp-theme.css): black backgrounds, red headings, and yellow body text. The original Markdown is unchanged.

Run this command from the `tutorial` folder:

```powershell
npx.cmd --yes --package @marp-team/marp-cli@4.5.1 marp epic-tutorial-slides.md --pdf --allow-local-files --pdf-outlines --theme ../marp-theme.css --author 'Alan Richardson' --title 'Agile Technical Exploratory Testing Workshop - EPIC Experience 2020' --description 'Materials prepared for EPIC Experience 2020, cancelled because of COVID-19.' -o export/epic-tutorial-slides.pdf
```
