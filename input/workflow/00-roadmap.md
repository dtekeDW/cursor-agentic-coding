# 00 - Roadmap (Docs-first)

## Ziel

Kurzer Fahrplan, damit wir die Cursor-Doku Stück für Stück abdecken und pro Iteration klar sehen, was bereits präsentationsreif ist.

## Status-Logik

- `✅` = zugeordnete Section steht in `Workshop.md` auf `ready-for-presentation`
- `❌` = Section ist noch nicht auf `ready-for-presentation`

## Ticket-Roadmap


| Ticket | Ziel (kurz)                                                                           | Section | Datei                                | Primäre Docs                                                                                                                                                                                | Status | Iteration |
| ------ | ------------------------------------------------------------------------------------- | ------- | ------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------ | --------- |
| T01    | Agent-Grundlagen für Chat-User: Komponenten, Queue vs Immediate, Checkpoints          | `01`    | [Section 01](../../output/sections/01/section.md) | [Agent Overview](https://cursor.com/docs/agent/overview)                                                                                                                                    | ✅      | `done`    |
| T02    | Modi sicher unterscheiden (`Ask`, `Plan`, `Agent`, `Debug`) und Einsatzfälle erklären | `02`    | [Section 02](../../output/sections/02/section.md) | [Agent Overview](https://cursor.com/docs/agent/overview.md), [Plan Mode](https://cursor.com/docs/agent/plan-mode.md), [Debug Mode](https://cursor.com/docs/agent/debug-mode.md)             | ✅      | `done`    |
| T03    | Kontext & Rules verständlich machen (`@`-Mentions, Indexing, Semantic Search)         | `03`    | [Section 03](../../output/sections/03/section.md) | [Rules](https://cursor.com/docs/rules.md), [Context](https://cursor.com/help/customization/context.md), [Indexing](https://cursor.com/help/customization/indexing.md)                       | ❌      | `next`    |
| T04    | Plan-first Workflow zeigen: erst Plan, dann Umsetzung, dann kurze Verifikation        | `04`    | [Section 04](../../output/sections/04/section.md) | [Plan Mode](https://cursor.com/docs/agent/plan-mode.md), [Prompting](https://cursor.com/docs/agent/prompting.md)                                                                            | ❌      | `next`    |
| T05    | Skills pragmatisch zeigen (Changeset, Jira)                                          | `05`    | [Section 05](../../output/sections/05/section.md) | [Skills](https://cursor.com/docs/skills.md)                                                                                                                                                  | ❌      | `next`    |
| T06    | MCP Small Demo: externen Kontext kontrolliert einbinden                               | `06`    | [Section 06](../../output/sections/06/section.md) | [MCP](https://cursor.com/docs/mcp.md), [Agent Security](https://cursor.com/docs/agent/security.md)                                                                                            | ❌      | `next`    |
| T07    | Abschluss: Adoption, Team-Setup, nächste Schritte und Q&A-Übergabe                     | `07`    | [Section 07](../../output/sections/07/section.md) | [Rules](https://cursor.com/docs/rules.md), [Skills](https://cursor.com/docs/skills.md), [Teams Setup](https://cursor.com/help/account-and-billing/teams-setup.md)                           | ❌      | `next`    |


## Iterations-Update (immer gleich)

1. `Workshop.md` zuerst aktualisieren (Version, Stand, Section-Status).
2. Betroffene Section-Datei(en) in `output/sections/*/section.md` schärfen.
3. Status in dieser Roadmap synchronisieren (`✅/❌`, `done/next`).
4. Kurz in `output/changelog.md` dokumentieren.

