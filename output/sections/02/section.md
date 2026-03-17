# Section 02 - Modes richtig einsetzen (Ask, Plan, Agent, Debug)


| Feld       | Wert                     |
| ---------- | ------------------------ |
| Section-ID | `02`                     |
| Owner      | `Miguel`                 |
| Zeit       | `6 Min`                  |
| Status     | `ready-for-presentation` |
| Kern-Demo  | `nein`                   |


## Navigation

- [Workshop Master](../../Workshop.md)
- [Prev: Section 01](../01/section.md)
- [Next: Section 03](../03/section.md)

## Ziel dieser Section

- Section 02 erklärt die Modes im Detail, damit das Publikum pro Aufgabe den passenden Startmodus wählen kann.

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

### Beispiele in der Praxis


| Situation                                | Modus | Kurz                                   |
| ---------------------------------------- | ----- | -------------------------------------- |
| Verstehen, Optionen, keine Änderung      | Ask   | Read-only, Rückfragen                  |
| Task klar und klein, Plan steht          | Agent | Edits + Terminal                       |
| Mehrere Phasen, Risiko, Rollback wichtig | Plan  | Phasen + Checks vor Umsetzung          |
| Unklares Fehlerbild, Laufzeit/Log nötig  | Debug | Hypothesen, Instrumentierung, dann Fix |


- **Ask:** Neue Drittanbieter-API anbinden – unsicher welche Stelle anfassen → Ask: "Welche Dateien/Module sind betroffen, welche zwei Optionen gibt es, was spricht dagegen?" (keine Edits).
  - Medien: [ask.gif](../../../input/modes/ask/ask.gif)
- **Agent:** Kleiner, klarer Task: "Tests für Modul X ergänzen" – Plan steht, Scope klein → Agent mit klarem Prompt, danach Diff + Test prüfen.
  - Medien: [agent.gif](../../../input/modes/agent/agent.gif)
- **Plan:** Refactoring über mehrere Dateien – zuerst Optionen in Ask, dann in Plan: 3 Phasen mit Dateien, Checks, Rollback pro Phase, erst danach Agent.
  - Zusatz im Plan: To-dos laufend anpassen und bei Bedarf Frontend/Backend als getrennte Arbeitsstränge planen.
  - Medien: [plan.gif](../../../input/modes/plan/plan.gif), [todos.gif](../../../input/modes/plan/todos.gif), [plan-final.png](../../../input/modes/plan/plan-final.png)
- **Debug:** Fehler tritt nur in Produktion/unter Last auf – statt blind zu raten: Debug-Mode, Hypothesen + Instrumentierung vorschlagen, Log-Auswertung, dann gezielter Fix.
  - Medien: [debug.gif](../../../input/modes/debug/debug.gif)

## Was du live in Cursor zeigst

1. **Beispiel-Mini-Aufgabe:** "Erkläre, wo in diesem Repo die Konfiguration für [Feature X] liegt und welche zwei Wege es gäbe, sie zu erweitern – ohne etwas zu ändern."
  - **Ask:** Gleicher Prompt → Antwort mit Fundstellen + Optionen, keine Edits.
  - **Agent:** Gleicher oder erweiterter Prompt mit "Setze Option A um" → Agent editiert; danach Diff zeigen.
   So siehst du direkt den Unterschied: "Zuerst in Ask, dann in Agent."
2. `Plan` kurz zeigen: wie der Plan vor der Umsetzung aufgebaut ist.
3. `Debug` kurz einordnen: wann runtime-basierte Analyse sinnvoller ist als direktes Editieren.
4. Übergang zu Section 03: Dort machen wir den Plan-first Ablauf praktisch.

## Was die Audience nach Section 02 verstanden haben soll

- Modes sind ein Steuerungshebel für Qualität, Tempo und Risiko.
- `Plan` ist ideal für komplexe Änderungen, `Debug` für unklare Fehlerbilder.
- Ein bewusster Mode-Wechsel spart Nacharbeit und macht Agent-Workflows stabiler.

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

