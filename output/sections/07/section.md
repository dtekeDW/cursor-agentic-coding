# Section 07 - End-to-End Live Case

| Feld | Wert |
| --- | --- |
| Section-ID | `07` |
| Owner | `Dogan` |
| Zeit | `6 Min` |
| Status | `draft` |
| Kern-Demo | `ja` |

## Navigation
- [Workshop Master](../../Workshop.md)
- [Prev: Section 06](../06/section.md)
- [Next: Section 08](../08/section.md)

## Lernziel
- Den kompletten Mini-Loop einmal live sehen: Ask -> Plan -> Agent -> Check.

## Kernbotschaft
- Kleine, verifizierte Schritte schlagen große riskante One-Shots.

## Live-Demo-Setup
- Sehr kleiner Use Case (z. B. kleine Doku-/Code-Anpassung mit kurzer Validierung).

## Demo-Skript
1. Ask: Ist-Zustand kurz klären.
2. Plan: Schrittfolge mit Tests.
3. Agent: genau 1 Phase umsetzen.
4. Check: Diff + kurzer Test + Rest-Risiken.

## Prompt/Command-Beispiele
```text
Work in a tight loop: inspect, propose smallest step, execute, validate, and stop for review.
```

```bash
git diff --stat
```

## Docs-Referenzen
- [Agent Prompting](https://cursor.com/docs/agent/prompting.md)
- [Search Tool](https://cursor.com/docs/agent/tools/search.md)
- [Browser Tool](https://cursor.com/docs/agent/tools/browser.md)
- [Terminal Tool](https://cursor.com/docs/agent/tools/terminal.md)

## Fallback bei Demo-Fehler
- Vorbereiteter „Recorded Path“: erwarteter Input/Output je Schritt.

## Takeaway
- Der agentische Loop ist praktisch und reproduzierbar, wenn man ihn klein hält.

## Übergang zur nächsten Section
- Übergabe an Miguel für Abschluss, Adoption-Tipps und Q&A.
