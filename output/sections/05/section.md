# Section 05 - Skills, Commands, Subagents: Wiederverwendbarkeit statt Zufall

| Feld | Wert |
| --- | --- |
| Section-ID | `05` |
| Owner | `Dogan` |
| Zeit | `8 Min` |
| Status | `ready-for-demo` |
| Kern-Demo | `ja` |

## Navigation
- [Workshop Master](../../Workshop.md)
- [Prev: Section 04](../04/section.md)
- [Next: Section 06](../06/section.md)

## Ziel dieser Section
- Section 05 zeigt, wie Skills, Commands und Subagents aus Einzelprompts einen Team-Standard machen.

## Was du konkret erklärst
1. Skills = wiederverwendbare Vorgehensweisen.
2. Commands = standardisierte Routine-Aktionen.
3. Subagents = Aufgaben trennen ohne Kontextchaos.
4. Ergebnis: weniger Variation, mehr Team-Qualität.

## Was du live in Cursor zeigst (Kern-Demo)
1. Einen vorhandenen Skill gezielt triggern.
2. Ein kleines Command-Muster durchspielen (Analyse -> Diff -> Summary).
3. Kurz zeigen, wie Output konsistenter wird als bei Ad-hoc-Prompting.

## Presenter dieser Section
- Dogan führt die Section vollständig durch.

## Prompt-/Command-Bausteine
```text
Use the relevant skill for this task.
Return only actionable findings with file references.
```

```bash
git status
rg -n "TODO|FIXME|HACK" .
```

## Plan B (wenn Live-Trigger hängt)
- Vorbereitete Output-Beispiele aus einem erfolgreichen Run zeigen.

## Was die Audience nach Section 05 verstanden haben soll
- Wiederverwendbarkeit ist der Hebel für Team-Adoption.

## Doc-Referenzen (Web)
- [Skills (DE)](https://cursor.com/de/docs/skills)
- [Subagents (DE)](https://cursor.com/de/docs/subagents)
- [MCP (DE)](https://cursor.com/de/docs/mcp)
- [Skills](https://cursor.com/docs/skills.md)
- [Subagents](https://cursor.com/docs/subagents.md)
- [MCP](https://cursor.com/docs/mcp.md)
- [Hooks](https://cursor.com/docs/hooks.md)
