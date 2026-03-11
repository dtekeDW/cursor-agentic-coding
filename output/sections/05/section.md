# Section 05 - Skills, Commands, Sub-Agents

| Feld | Wert |
| --- | --- |
| Section-ID | `05` |
| Owner | `Dogan` |
| Zeit | `8 Min` |
| Status | `draft` |
| Kern-Demo | `ja` |

## Navigation
- [Workshop Master](../../Workshop.md)
- [Prev: Section 04](../04/section.md)
- [Next: Section 06](../06/section.md)

## Lernziel
- Wiederverwendbare Agent-Workflows über Skills/Commands statt Prompt-Copy-Paste.

## Kernbotschaft
- Standardisierte Automationen reduzieren Streuung und sparen Teamzeit.

## Live-Demo-Setup
- Zeigen eines bestehenden Skill-Use-Cases und eines Command-Patterns für Routineaufgaben.

## Demo-Skript
1. Skill-Auswahl und Trigger kurz erklären.
2. Command-Pattern für „analyse -> diff -> short summary“ zeigen.
3. Ergebnisqualität gegen Ad-hoc-Prompt vergleichen.

## Prompt/Command-Beispiele
```text
Use the matching skill for this task and summarize only actionable output.
```

```bash
git status
rg -n "TODO|FIXME" .
```

## Docs-Referenzen
- [Skills](https://cursor.com/docs/skills.md)
- [Subagents](https://cursor.com/docs/subagents.md)
- [MCP](https://cursor.com/docs/mcp.md)
- [Hooks](https://cursor.com/docs/hooks.md)

## Fallback bei Demo-Fehler
- Vorbereitete Snippets für Skill-Trigger und Command-Output verwenden.

## Takeaway
- Skills und Commands sind Team-Standards, nicht nur persönliche Productivity-Hacks.

## Übergang zur nächsten Section
- Übergabe an Miguel: Safety-Regeln für verlässliche Zusammenarbeit.
