# Section 06 - Safety und Governance: schnell, aber kontrolliert

| Feld | Wert |
| --- | --- |
| Section-ID | `06` |
| Owner | `Miguel` |
| Zeit | `5 Min` |
| Status | `ready-for-content` |
| Kern-Demo | `nein` |

## Navigation
- [Workshop Master](../../Workshop.md)
- [Prev: Section 05](../05/section.md)
- [Next: Section 07](../07/section.md)

## Ziel dieser Section
- Section 06 liefert einen klaren Safety- und Review-Standard für den praktischen Alltag mit Cursor.

## Was du konkret erklärst
1. Diff vor Vertrauen.
2. Least Privilege bei Tools/Terminal.
3. Keine sensiblen Daten ungefiltert in Prompts/Logs.
4. Vor Ausführung: Risiko, Blast Radius, Rollback klären.

## Was du live in Cursor zeigst
1. Kurzer Review-Flow vor Ausführung.
2. Welche Frage man dem Agent zwingend stellt, bevor man „go“ sagt.

## Prompt-/Command-Bausteine
```text
Before executing, provide:
- confidence level
- blast radius
- rollback approach
- what must be reviewed first
```

```bash
git status
git diff --stat
```

## Was die Audience nach Section 06 verstanden haben soll
- Agent-Speed ist nur wertvoll mit klaren Stop- und Review-Punkten.

## Doc-Referenzen (Web)
- [Security (DE)](https://cursor.com/de/docs/agent/security)
- [Terminal Tool (DE)](https://cursor.com/de/docs/agent/tools/terminal)
- [Agent Security](https://cursor.com/docs/agent/security.md)
- [Terminal Tool](https://cursor.com/docs/agent/tools/terminal.md)
- [Help: Privacy](https://cursor.com/help/security-and-privacy/privacy.md)
- [Enterprise: Privacy and Data Governance](https://cursor.com/docs/enterprise/privacy-and-data-governance.md)
