## TestBash Netherlands 2017 Talk - How to misuse Automation for testing, fun and productivity

A talk about using automation tools pragmatically, looking beyond common labels and social conventions to understand what tools actually do and how they can support testing, fun, and productivity.

More details:

https://www.eviltester.com/conference/testBash_netherlands_2017_conference/

## Content

- [slides in markdown format](slides.md)
- [Marp-friendly slide source](slides_marp.md)
- [slides as pdf](exports/slides.pdf)
- [practice transcript](transcript.md)
- [planning notes](planning.txt)
- [slide images](images/)

## Overview

The talk explores how testers can use tools in ways that do not always match the conventional description of those tools. It discusses mental models, social controls, events and behaviours, Cucumber, REST Assured, Selenium, web browsers, developer tools, and how flexible tool use can support testing.

The PDF was generated with Marp from `slides_marp.md` because that source keeps speaker notes as HTML comments. The `slides.md` file is retained as the existing slide markdown from the archive.

```powershell
npx --yes @marp-team/marp-cli@latest slides_marp.md --pdf --allow-local-files -o exports/slides.pdf
```
