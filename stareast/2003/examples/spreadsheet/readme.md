## Dot Generation Spreadsheet - Version 0.2

Alan Richardson's original Excel example for describing graph nodes, links and paths, generating DOT text, and invoking Graphviz.

- [Original workbook - XLS](dotSheet_02.xls)
- [Instructions - Markdown](instructions.md)
- [Original instructions - PDF, 10 pages](export/instructions.pdf)
- [DOT generation function - extracted VBA](vba/Module1.bas)
- [Worksheet button handlers - extracted VBA](vba/Sheet4.cls)
- [Graph example](../graphs/)
- [Conference page](https://www.eviltester.com/conference/stareast2003_conference/)

The workbook is copied unchanged, preserving all four sheets (`links`, `nodes`, `paths`, `macros`), formulas, VBA and button controls. Its cells, VBA and all OLE streams match the workbook in the existing website ZIP, although the XLS container bytes differ. The older version 0.1 is omitted.

The instructions retain all 86 content paragraphs and 25 illustration placements. The automatic contents list's 22 page-number entries and its repeated screenshot labels are omitted from Markdown. Native screenshots are unchanged; the embedded logo is rendered to PNG. The original PDF is unchanged.

The two functional VBA modules are extracted as readable source, with normalized line endings and trailing whitespace; the workbook retains the originals. Empty worksheet/workbook class stubs are omitted. This is an original Excel 2000 example with configurable local paths to Graphviz and a viewer, as described in the instructions. The macros have not been executed during migration.

The screenshots and logo come from the original instructions. No separate image-credit URLs are recorded.
