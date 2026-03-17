# Section 02 - Modes richtig einsetzen (Ask, Plan, Agent, Debug)


| Feld       | Wert                     |
| ---------- | ------------------------ |
| Section-ID | `02`                     |
| Owner      | `Dogan`                  |
| Zeit       | `6 Min`                  |
| Status     | `ready-for-presentation` |
| Kern-Demo  | `nein`                   |


## Navigation

- [Workshop Master](../../Workshop.md)
- [Prev: Section 01](../01/section.md)
- [Next: Section 03](../03/section.md)

## Ziel dieser Section

- Section 02 ist das **Entscheidungs-Framework** fuer Modes: welcher Startmodus passt zu welchem Problem.
- Keine Umsetzungsdemo in dieser Section; die praktische Execution folgt in Section 03.

## Was du konkret erklärst

### Teil 1: Modus-Überblick und Entscheidungslogik

1. `Ask`: Analyse, Verständnis, Optionen und Rückfragen, ohne direkte Dateiänderungen.
2. `Agent`: direkte Umsetzung mit Tools (lesen, editieren, ausführen).
3. Grundregel: Nicht mit dem schnellsten, sondern mit dem passendsten Modus starten.

### Teil 2: Plan und Debug als Spezial-Modi

1. `Plan`: zuerst Anforderungen klären, Kontext sammeln und einen überprüfbaren Plan erzeugen, dann umsetzen.
  - Typischer Flow: Fragen -> Recherche -> Plan -> Review -> Build.
  - Im Plan können To-dos explizit erstellt, umsortiert, präzisiert und im Verlauf aktualisiert werden.
  - Optional kann der Plan in Arbeitsstränge aufgeteilt werden, z. B. zusätzlicher Agent für `frontend` und weiterer Agent für `backend`.
2. `Debug`: runtime-basiertes Vorgehen für schwierige Bugs statt "blindem Fixen".
  - Typischer Flow: Hypothesen -> Instrumentierung -> Reproduktion -> Log-Analyse -> gezielter Fix.

### Teil 3: Workflow-Heuristik im Alltag

1. Heuristik:
  - Unsicherheit hoch, Scope groß, mehrere Wege -> `Ask` oder `Plan`.
  - Task klar und klein -> `Agent`.
  - Reproduzierbarer, aber unklarer Fehler -> `Debug`.
2. Mode-Wechsel ist normal:
  - von `Ask` zu `Plan` für Struktur,
  - von `Plan` zu `Agent` für Umsetzung,
  - bei Problemen gezielt in `Debug`.
3. **Vermeiden:** Großen Refactoring oder unklares Feature direkt in Agent starten – erst Ask/Plan, dann Agent.

### Beispiele in der Praxis (nur Entscheidung, keine Umsetzung)


| Situation                                | Modus | Kurz                          |
| ---------------------------------------- | ----- | ----------------------------- |
| Verstehen, Optionen, keine Änderung      | Ask   | Read-only, Rückfragen         |
| Task klar und klein, Plan steht          | Agent | Edits + Terminal              |
| Mehrere Phasen, Risiko, Rollback wichtig | Plan  | Phasen + Checks vor Umsetzung |
| Unklares Fehlerbild, Laufzeit/Log nötig  | Debug | Evidenz vor Fix               |

- **Mode-Karten live vergleichen (ohne Code-Edits):**
  - Ask/Agent als Gegenueberstellung: [ask.gif](../../../input/modes/ask/ask.gif), [agent.gif](../../../input/modes/agent/agent.gif)
- **Plan/Debug kurz einordnen:**
  - Plan-Medien: [plan.gif](../../../input/modes/plan/plan.gif), [todos.gif](../../../input/modes/plan/todos.gif), [plan-final.png](../../../input/modes/plan/plan-final.png)
  - Debug-Medium: [debug.gif](../../../input/modes/debug/debug.gif)

## Was du live in Cursor zeigst

1. **Szenario-Raster zeigen (2-3 kurze Aufgaben):** Audience entscheidet zuerst den Modus, dann loest ihr auf.
2. **Ask vs Agent** an derselben Frage einordnen (was darf passieren, was nicht).
3. **Plan/Debug** als Spezialfaelle einordnen (wann Pflicht, wann optional).
4. **Uebergang zu Section 03:** "Jetzt nehmen wir genau einen Fall und fuehren ihn Plan-First wirklich aus."

## Was die Audience nach Section 02 verstanden haben soll

- Modes sind ein Steuerungshebel für Qualität, Tempo und Risiko.
- `Plan` ist ideal für komplexe Änderungen, `Debug` für unklare Fehlerbilder.
- Ein bewusster Mode-Wechsel spart Nacharbeit und macht Agent-Workflows stabiler.
- Die Umsetzung passiert erst nach Mode-Entscheidung (Section 03).

## Prompt-/Command-Bausteine (zum Vorlesen oder Kopieren)

**Szenario:** Optionen vor Refactoring oder Feature klären

```text
Use Ask mode. Do not edit files.
Return 3 implementation options with trade-offs and expected risk.
```

**Szenario:** Komplexe Änderung in Phasen strukturieren

```text
Switch to Plan mode and propose 3 phases.
For each phase add: files, checks, rollback idea.
```

**Szenario:** Unklarer Bug – Hypothesen und Instrumentierung vor Fix

```text
Use Debug mode.
Propose 3 root-cause hypotheses and what instrumentation you would add before fixing.
```

## Doc-Referenzen (Web)

- [Agent Overview](https://cursor.com/docs/agent/overview)
- [Plan Mode](https://cursor.com/docs/agent/plan-mode)
- [Debug Mode](https://cursor.com/docs/agent/debug-mode)
- [How Agents Work](https://cursor.com/learn/agents.md)
- [Help: Ask Mode](https://cursor.com/help/ai-features/ask-mode.md)

