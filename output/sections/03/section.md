# Section 03 - Plan-First: Von Idee zu sauberem Umsetzungsplan

| Feld | Wert |
| --- | --- |
| Section-ID | `03` |
| Owner | `Miguel` |
| Zeit | `8 Min` |
| Status | `ready-for-demo` |
| Kern-Demo | `ja` |

## Navigation
- [Workshop Master](../../Workshop.md)
- [Prev: Section 02](../02/section.md)
- [Next: Section 04](../04/section.md)

## Ziel dieser Section
- Section 03 zeigt praktisch, wie aus einer Anforderung ein sauberer Plan mit kleinen Phasen entsteht.

## Was du konkret erklärst
1. Plan-First bedeutet: keine Änderung ohne vorherige Optionen.
2. Jede Option braucht: betroffene Dateien, Risiken, Testidee.
3. Entscheidungskriterien: kleinster Scope, geringstes Risiko, schnell validierbar.
4. Ergebnis ist ein freigegebener Mini-Plan statt langer Wunschliste.

## Was du live in Cursor zeigst (Kern-Demo)
1. Ask-Mode starten und 2-3 Optionen erzeugen.
2. Optionen laut vergleichen und eine auswählen.
3. Plan-Mode: gewählte Option in 3 Phasen brechen.
4. Pro Phase: Ziel, Datei(en), Check, Abbruchkriterium.

## Presenter dieser Section
- Dogan führt die Section vollständig durch.

## Prompt-/Command-Bausteine
```text
Use Ask mode first. No edits.
Give me 3 implementation options.
For each option include:
- files/components affected
- risk level
- easiest validation check
Recommend one option and wait for approval.
```

```text
Switch to Plan mode.
Break approved option into 3 small phases.
For each phase include success criteria and rollback note.
```

## Plan B (wenn Live-Output schwach ist)
- Vorgefertigten Beispiel-Plan zeigen und gemeinsam gegenprüfen.

## Was die Audience nach Section 03 verstanden haben soll
- Gute Agent-Arbeit beginnt mit Optionen und Entscheidung, nicht mit blindem Ausführen.

## Doc-Referenzen (Web)
- [Plan Mode (DE)](https://cursor.com/de/docs/agent/plan-mode)
- [Prompting (DE)](https://cursor.com/de/docs/agent/prompting)
- [Plan Mode](https://cursor.com/docs/agent/plan-mode.md)
- [Agent Prompting](https://cursor.com/docs/agent/prompting.md)
- [Help: Plan Mode](https://cursor.com/help/ai-features/plan-mode.md)
- [Agent Overview](https://cursor.com/docs/agent/overview.md)
