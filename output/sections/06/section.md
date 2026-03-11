# Section 06 - Safety, Sandbox, Review

| Feld | Wert |
| --- | --- |
| Section-ID | `06` |
| Owner | `Miguel` |
| Zeit | `5 Min` |
| Status | `draft` |
| Kern-Demo | `nein` |

## Navigation
- [Workshop Master](../../Workshop.md)
- [Prev: Section 05](../05/section.md)
- [Next: Section 07](../07/section.md)

## Lernziel
- Teilnehmer kennen die minimalen Guardrails: Diff vor Vertrauen, Least Privilege, Review-Gates.

## Kernbotschaft
- Agentisches Arbeiten ist nur dann robust, wenn Safety-Checks fest eingebaut sind.

## Live-Demo-Setup
- Kein Kern-Demo-Block, Fokus auf konkrete Review-Checkliste.

## Demo-Skript
- 5-Punkte-Check vor Merge: Status, Diff, Tests, Risiken, Rollback.

## Prompt/Command-Beispiele
```text
Show compact diff summary and list rollback steps before any non-trivial change.
```

```bash
git status
git diff --stat
```

## Docs-Referenzen
- [Agent Security](https://cursor.com/docs/agent/security.md)
- [Terminal Tool](https://cursor.com/docs/agent/tools/terminal.md)
- [Help: Privacy](https://cursor.com/help/security-and-privacy/privacy.md)
- [Enterprise: Privacy and Data Governance](https://cursor.com/docs/enterprise/privacy-and-data-governance.md)

## Fallback bei Demo-Fehler
- Checkliste als statische Folie verwenden.

## Takeaway
- Ohne Review-Disziplin wird Agent-Speed schnell zum Risiko.

## Übergang zur nächsten Section
- Übergabe an Dogan: End-to-End Mini-Case mit Plan, Umsetzung und Feedback.
