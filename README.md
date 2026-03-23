# Cursor - Agentic Coding in Practice
### This workshop is designed to introduce you to the concept of agentic coding using Cursor, an AI-powered code generation tool. By the end of this workshop, you will have a solid understanding of how to leverage Cursor to enhance your coding workflow and create more efficient and effective code.

## Cursor Docs
### - Documentation Overview: [Cursor Docs](https://docs.cursor.com/)
### - Docs for LLM Research: [Cursor LLM TXT](https://cursor.com/llms.txt)

## Workshop Agenda

## Working Pattern
- `input/` = Brainstorm, Constraints, Quellen (nicht-iterative Inputs)
- `output/` = iterative Arbeitsartefakte
  - `output/sections/*/section.md` (volle Referenz inkl. **Talk-Referenz**: Sprechtext, Beats, FAQ)
  - `output/changelog.md` (Änderungshistorie)
  - `output/sections/*/presentation.md` (kurze **Ablauf-Checkliste** nur für Referent:innen)
  - `output/sections/*/slides.md` (Folien / Handout für Zuhörende; Marp-freundlich mit `---`)
  - `output/PRESENTATION-FULL.md` (alle Checklisten gebündelt; Build: `scripts/build-presentation-full.sh`)
  - `output/SLIDES-FULL.md` (alle Audience-Folien; Build: `scripts/build-slides-full.sh`)
- Root-Artefakte / Steuerung
  - `Workshop.md` (Master-Backbone)
  - `input/workflow/00-roadmap.md` (Ticket-/Status-Roadmap)
  - `input/workflow/Workflow.md` und `input/workflow/03-constraints.md` (Arbeitsregeln)