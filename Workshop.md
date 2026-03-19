# Cursor Agentic Coding in Practice - Workshop Backbone

## Meta

- Version: `v0.4.27`
- Stand: `2026-03-18 CET`
- Speaker: `Dogan Teke`, `Miguel Franken`
- Zielgruppe: Entwickler:innen, die bisher primär Chat-Prompting nutzen
- Dauer: `43 Min` Talk + `10 Min` Q&A
- Ziel: Cursor agentisch nutzen (Plan Mode, Skills, MCP, Guardrails)

## Agenda

| ID  | Titel                     | Min | Presenter      | Kern-Demo | Status                 | Datei                                |
| --- | ------------------------- | --- | -------------- | --------- | ---------------------- | ------------------------------------ |
| 01  | Intro                      | 6   | Dogan          | nein      | ready-for-presentation | [Section 01](output/sections/01/section.md) |
| 02  | Modes                      | 6   | Dogan          | nein      | ready-for-presentation | [Section 02](output/sections/02/section.md) |
| 03  | Context, Rules             | 6   | Miguel         | nein      | ready-for-content      | [Section 03](output/sections/03/section.md) |
| 04  | Full Demo (Ask + Plan)     | 7   | Miguel         | ja        | ready-for-demo         | [Section 04](output/sections/04/section.md) |
| 05  | Skills + Demo              | 7   | Dogan & Miguel | ja        | ready-for-demo         | [Section 05](output/sections/05/section.md) |
| 06  | MCP Small Demo             | 4   | Dogan          | ja        | ready-for-demo         | [Section 06](output/sections/06/section.md) |
| 07  | Q&A                        | 4   | Dogan & Miguel | nein      | ready-for-content      | [Section 07](output/sections/07/section.md) |

Gesamtzeit Talk: `43 Min`  
Q&A: `10 Min`

## Docs Mapping (aus `https://cursor.com/llms.txt`)

- Quellindex: [Cursor LLM TXT](https://cursor.com/llms.txt)

| Section | Fokus                     | Primäre Docs                                                                                                                                 |
| ------- | ------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------- |
| 01      | Einstieg, Agent-Grundverständnis | [Agent Overview](https://cursor.com/docs/agent/overview), [Docs Overview](https://cursor.com/docs.md)                                      |
| 02      | Ask/Plan/Agent/Debug Modes | [Agent Overview](https://cursor.com/docs/agent/overview.md), [Plan Mode](https://cursor.com/docs/agent/plan-mode.md), [Debug Mode](https://cursor.com/docs/agent/debug-mode.md) |
| 03      | Kontext, Rules, Indexing  | [Rules](https://cursor.com/docs/rules.md), [Help: Context](https://cursor.com/help/customization/context.md), [Help: Indexing](https://cursor.com/help/customization/indexing.md) |
| 04      | Plan-First Workflow       | [Plan Mode](https://cursor.com/docs/agent/plan-mode.md), [Prompting](https://cursor.com/docs/agent/prompting.md)                             |
| 05      | Skills (Changeset, Jira)  | [Skills](https://cursor.com/docs/skills.md)                                                                                                  |
| 06      | MCP Small Demo            | [MCP](https://cursor.com/docs/mcp.md), [Agent Security](https://cursor.com/docs/agent/security.md)                                            |
| 07      | Adoption, Q&A             | [Rules](https://cursor.com/docs/rules.md), [Skills](https://cursor.com/docs/skills.md), [Help: Teams Setup](https://cursor.com/help/account-and-billing/teams-setup.md) |

## Iterationsregeln

1. Erst diese Datei aktualisieren, dann betroffene Section-Dateien.
2. Bei jeder Iteration `Version` und `Stand` aktualisieren.
3. Jede Section muss Vor-/Rücklinks enthalten (`Workshop`, `Prev`, `Next`).
4. Jede Section nutzt den gleichen Kopf-Contract: `ID`, `Owner`, `Zeit`, `Status`.
5. Änderungen immer kurz in [output/Changelog.md](output/Changelog.md) eintragen.

## Navigationsindex

- [Roadmap](input/workflow/00-roadmap.md)
- [Section 01](output/sections/01/section.md)
- [Section 02](output/sections/02/section.md)
- [Section 03](output/sections/03/section.md)
- [Section 04](output/sections/04/section.md)
- [Section 05](output/sections/05/section.md)
- [Section 06](output/sections/06/section.md)
- [Section 07](output/sections/07/section.md)
- [Changelog](output/Changelog.md)
