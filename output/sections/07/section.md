# Section 07 - End-to-End Mini-Case: kompletter Loop in 6 Minuten

| Feld | Wert |
| --- | --- |
| Section-ID | `07` |
| Owner | `Dogan` |
| Zeit | `6 Min` |
| Status | `ready-for-demo` |
| Kern-Demo | `ja` |

## Navigation
- [Workshop Master](../../Workshop.md)
- [Prev: Section 06](../06/section.md)
- [Next: Section 08](../08/section.md)

## Ziel dieser Section
- Section 07 verbindet alles zu einem kompakten End-to-End-Run (Ask -> Plan -> Agent -> Review).

## Was du konkret erklärst
1. Ask: Ist-Zustand verstehen.
2. Plan: kleinsten sinnvollen Schritt definieren.
3. Agent: einen Schritt ausführen.
4. Review: Diff + Check + Entscheidung „weiter/stop“.

## Was du live in Cursor zeigst (Kern-Demo)
1. 1 konkrete Mini-Aufgabe wählen (kein großes Refactoring).
2. Ask + Plan in unter 2 Minuten.
3. Genau einen Implementierungsschritt laufen lassen.
4. Diff und kurze Validierung zeigen.

## Presenter dieser Section
- Dogan führt die Section vollständig durch.

## Prompt-/Command-Bausteine
```text
Run a tight loop:
1) inspect current state
2) propose smallest useful step
3) execute only that step
4) validate and stop for review
```

```bash
git diff --stat
```

## Plan B (wenn Demo fehlschlägt)
- Vorbereitete Schrittfolge mit erwarteten Outputs zeigen.

## Was die Audience nach Section 07 verstanden haben soll
- Der Loop ist praktisch, wiederholbar und teamfähig.

## Doc-Referenzen (Web)
- [Prompting (DE)](https://cursor.com/de/docs/agent/prompting)
- [Search Tool (DE)](https://cursor.com/de/docs/agent/tools/search)
- [Browser Tool (DE)](https://cursor.com/de/docs/agent/tools/browser)
- [Agent Prompting](https://cursor.com/docs/agent/prompting.md)
- [Search Tool](https://cursor.com/docs/agent/tools/search.md)
- [Browser Tool](https://cursor.com/docs/agent/tools/browser.md)
- [Terminal Tool](https://cursor.com/docs/agent/tools/terminal.md)
