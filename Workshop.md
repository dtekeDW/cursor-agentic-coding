# Cursor Agentic Coding in Practice - Workshop Backbone

## Meta

- Version: `v0.4.26`
- Stand: `2026-03-18 CET`
- Speaker: `Dogan Teke`, `Miguel Franken`
- Zielgruppe: Entwickler:innen, die bisher primär Chat-Prompting nutzen
- Dauer: `47 Min` Talk + `10 Min` Q&A
- Ziel: Cursor agentisch nutzen (Plan Mode, Sub-Agents, Skills, Commands, Guardrails)

## Agenda


| ID  | Titel                        | Min | Presenter | Kern-Demo | Status                 | Datei                                |
| --- | ---------------------------- | --- | --------- | --------- | ---------------------- | ------------------------------------ |
| 01  | Einstieg und Zielbild        | 6   | Dogan     | nein      | ready-for-presentation | [Section 01](output/sections/01/section.md) |
| 02  | Modes und Agentischer Loop   | 6   | Dogan     | nein      | ready-for-presentation | [Section 02](output/sections/02/section.md) |
| 03  | Kontext und Rules            | 6   | Miguel    | nein      | ready-for-content      | [Section 03](output/sections/03/section.md) |
| 04  | Plan-First in der Praxis     | 7   | Miguel    | ja        | ready-for-demo         | [Section 04](output/sections/04/section.md) |
| 05  | Skills                       | 7   | Miguel    | ja        | ready-for-demo         | [Section 05](output/sections/05/section.md) |
| 06  | Debug Mode und Safety        | 5   | Miguel    | ja        | work-in-progress       | [Section 06](output/sections/06/section.md) |
| 07  | End-to-End Live Case         | 6   | Miguel    | ja        | ready-for-demo         | [Section 07](output/sections/07/section.md) |
| 08  | Takeaways und Q&A Übergabe   | 4   | Miguel    | nein      | ready-for-content      | [Section 08](output/sections/08/section.md) |


Gesamtzeit Talk: `47 Min`  
Q&A: `10 Min`

## Docs Mapping (aus `https://cursor.com/llms.txt`)

- Quellindex: [Cursor LLM TXT](https://cursor.com/llms.txt)


| Section | Fokus                            | Primäre Docs                                                                                                                                                                                                                  |
| ------- | -------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 01      | Einstieg, Agent-Grundverständnis | [Agent Overview](https://cursor.com/docs/agent/overview), [Docs Overview](https://cursor.com/docs.md)                                                                                                                         |
| 02      | Ask/Plan/Agent/Debug Modes       | [Agent Overview](https://cursor.com/docs/agent/overview.md), [Plan Mode](https://cursor.com/docs/agent/plan-mode.md), [Debug Mode](https://cursor.com/docs/agent/debug-mode.md)                                               |
| 03      | Kontext, Rules, Indexing         | [Rules](https://cursor.com/docs/rules.md), [Help: Context](https://cursor.com/help/customization/context.md), [Help: Indexing](https://cursor.com/help/customization/indexing.md)                                             |
| 04      | Plan-First Workflow              | [Plan Mode](https://cursor.com/docs/agent/plan-mode.md), [Prompting](https://cursor.com/docs/agent/prompting.md)                                                                                                              |
| 05      | Skills (Changeset, Jira)         | [Skills](https://cursor.com/docs/skills.md)                                                                                                                                                                                    |
| 06      | Debug Mode, minimale Safety      | [Debug Mode](https://cursor.com/docs/agent/debug-mode.md), [Agent Security](https://cursor.com/docs/agent/security.md)                                                                                                         |
| 07      | End-to-End Agent Loop            | [Agent Prompting](https://cursor.com/docs/agent/prompting.md), [Search Tool](https://cursor.com/docs/agent/tools/search.md), [Browser Tool](https://cursor.com/docs/agent/tools/browser.md)                                   |
| 08      | Adoption und nächste Schritte    | [Rules](https://cursor.com/docs/rules.md), [Skills](https://cursor.com/docs/skills.md), [Help: Teams Setup](https://cursor.com/help/account-and-billing/teams-setup.md)                                                       |


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
- [Section 08](output/sections/08/section.md)
- [Changelog](output/Changelog.md)

