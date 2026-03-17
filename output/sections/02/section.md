# Section 02 - Modes richtig einsetzen (Ask, Plan, Agent, Debug)

| Feld | Wert |
| --- | --- |
| Section-ID | `02` |
| Owner | `Miguel` |
| Zeit | `6 Min` |
| Status | `ready-for-content` |
| Kern-Demo | `nein` |

## Navigation
- [Workshop Master](../../Workshop.md)
- [Prev: Section 01](../01/section.md)
- [Next: Section 03](../03/section.md)

## Ziel dieser Section
- Section 02 erklärt die Modes im Detail, damit das Publikum pro Aufgabe den passenden Startmodus wählen kann.

## Was du konkret erklärst
1. `Ask`: Analyse, Verständnis, Optionen, keine Änderungen.
2. `Plan`: erst Spezifikation/Phasen, dann Umsetzung.
3. `Agent`: führt aus, editiert, nutzt Tools.
4. `Debug`: strukturiertes Bug-Vorgehen.
5. Heuristik: Unsicherheit hoch -> Ask/Plan. Klarer kleiner Schritt -> Agent.

## Was du live in Cursor zeigst
1. Gleiche Aufgabe in 2 Modi anstoßen (`Ask` vs `Agent`).
2. Zeigen, wie sich Output-Typ unterscheidet (Analyse vs Aktion).
3. Kurz `Plan` zeigen: Phasen + Risiken + Checks.

## Presenter dieser Section
- Miguel führt die Section vollständig durch.

## Prompt-/Command-Bausteine
```text
Use Ask mode. Do not edit files.
Return 3 implementation options with trade-offs and expected risk.
```

```text
Switch to Plan mode and propose 3 phases.
For each phase add: files, checks, rollback idea.
```

## Was die Audience nach Section 02 verstanden haben soll
- Modes sind kein UI-Detail, sondern Workflow-Entscheidung.
- Ein guter Start-Mode spart Nacharbeit.

## Doc-Referenzen (Web)
- [Agent Overview (DE)](https://cursor.com/de/docs/agent/overview)
- [Plan Mode (DE)](https://cursor.com/de/docs/agent/plan-mode)
- [Debug Mode (DE)](https://cursor.com/de/docs/agent/debug-mode)
- [Agent Overview](https://cursor.com/docs/agent/overview.md)
- [Plan Mode](https://cursor.com/docs/agent/plan-mode.md)
- [Debug Mode](https://cursor.com/docs/agent/debug-mode.md)
- [Help: Ask Mode](https://cursor.com/help/ai-features/ask-mode.md)
