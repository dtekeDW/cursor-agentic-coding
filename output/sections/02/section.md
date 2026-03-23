# Section 02 — Modes richtig einsetzen (Ask, Plan, Agent, Debug)

**Vollständige Section-Referenz** (Inhalt + Sprechtext).  
**Kurz am Pult:** [presentation.md](presentation.md) · **Folien:** [slides.md](slides.md)

| Feld       | Wert                     |
| ---------- | ------------------------ |
| Section-ID | `02`                     |
| Owner      | `Dogan`                  |
| Zeit       | `6 Min`                  |
| Status     | `ready-for-presentation` |
| Kern-Demo  | `nein`                   |

## Navigation

- [Ablauf-Checkliste (Referent:innen)](presentation.md)
- [Folien (Audience)](slides.md)
- [Workshop Master](../../../Workshop.md)
- [Prev: Section 01](../01/section.md)
- [Next: Section 03](../03/section.md)

## Ziel dieser Section

- Section 02 führt die **vier Modi** (Ask, Plan, Agent, Debug) ein und gibt eine **kurze Entscheidungshilfe**: wann welcher Modus.
- **Bewusst knapp:** Den kompletten Ablauf und die Live-Demo spielen wir in **Section 04** durch. Hier nur das nötige Raster, damit die Audience die Modi einordnen kann.

## Erklärung & Präsentation (kompakt, an Cursor Docs angelehnt)

**Quellen:** [Agent](https://cursor.com/help/ai-features/agent), [Ask Mode](https://cursor.com/help/ai-features/ask-mode), [Plan Mode](https://cursor.com/docs/agent/plan-mode), [Prompting](https://cursor.com/docs/agent/prompting).

### Welchen Modus wann?

| Modus | Wofür am besten | Darf Dateien ändern? |
| ----- | ----------------- | -------------------- |
| **Ask** | Code verstehen, Architektur erkunden, Optionen klären | Nein (read-only) |
| **Agent** | Features bauen, refactoren, Bugs fixen, Tests schreiben | Ja |
| **Plan** | Komplexe Aufgaben: zuerst Plan prüfen, dann umsetzen | Ja (nach Freigabe des Plans) |
| **Debug** | Schwierige Bugs, bei denen Laufzeit/Logs nötig sind | Ja |

**Faustregel:** Mit dem **passendsten** Modus starten, nicht mit dem schnellsten. Bei Unklarheit oder vielen Dateien: Ask oder Plan. Bei klarer, kleiner Aufgabe: Agent. Bei unklarem Fehlerbild: Debug.

### Die vier Modi in einem Satz

- **Ask:** Read-only. Der Agent beantwortet Fragen, erkundet die Codebase, macht **keine** Änderungen. Gut für „Wie funktioniert X?“ oder „Welche Optionen gibt es?“ ([Ask Mode](https://cursor.com/help/ai-features/ask-mode)).
- **Agent:** Der Agent sucht, editiert, führt Befehle aus und behebt Fehler. Für die meisten Umsetzungsaufgaben ([Agent](https://cursor.com/help/ai-features/agent)).
- **Plan:** Zuerst Anforderungen klären, Codebase recherchieren, **Plan erstellen und von euch freigeben**, dann umsetzen. Ideal bei komplexen Features, vielen Dateien oder unklarem Scope ([Plan Mode](https://cursor.com/docs/agent/plan-mode)).
- **Debug:** Laufzeit- und evidenzbasiert: Hypothesen, Instrumentierung, Reproduktion, dann gezielter Fix. Für Bugs, die sich nicht auf Anhieb erklären lassen.

### Modus wechseln

- **Mode-Picker** im Agent-Panel (Dropdown).
- **Shift+Tab** zum Durchrotieren der Modi.
- Jeder Modus hat eigenen Kontext; bei Aufgabenwechsel neuen Chat starten.

### Kurz: Prompting und Kontext

- Im Chat mit **@** gezielt Kontext anhängen: Dateien, Ordner, Symbole, Docs ([Prompting](https://cursor.com/docs/agent/prompting)). Wenn unsicher, welche Dateien relevant sind: weglassen, der Agent sucht selbst.
- **Bilder** per Paste oder Drag & Drop für UI/Debug; **Spracheingabe** per Mikrofon-Icon möglich.

Details zu Kontext und Rules kommen in **Section 03**; den vollständigen Workflow (Ask → Plan → Agent) zeigt **Section 04** live.

## Beispiele (nur Einordnung, keine Umsetzung)

| Situation | Modus | Kurz |
| --------- | ----- | ---- |
| Verstehen, Optionen, keine Änderung | Ask | Read-only, Rückfragen |
| Task klar und klein, Plan steht | Agent | Edits + Terminal |
| Mehrere Phasen, Risiko, Rollback wichtig | Plan | Erst Plan, dann Umsetzung |
| Unklares Fehlerbild, Laufzeit/Log nötig | Debug | Evidenz vor Fix |

- **Medien (ohne Code-Edits):** Ask/Agent gegenüberstellen ([ask.gif](../../../input/modes/ask/ask.gif), [agent.gif](../../../input/modes/agent/agent.gif)); Plan/Debug kurz einordnen ([plan.gif](../../../input/modes/plan/plan.gif), [todos.gif](../../../input/modes/plan/todos.gif), [plan-final.png](../../../input/modes/plan/plan-final.png), [debug.gif](../../../input/modes/debug/debug.gif)).

## Was du live in Cursor zeigst

1. **Modi kurz benennen:** Welchen Modus wann (Tabelle „Welchen Modus wann?“), ein Satz pro Modus.
2. **1–2 Szenarien:** Audience wählt Modus, ihr löst auf (ohne tiefe Demo).
3. **Modus wechseln:** Mode-Picker oder Shift+Tab zeigen.
4. **Übergang:** „Bevor wir den kompletten Flow in Section 04 durchspielen, geht es in Section 03 um Rules und Context.“

## Was die Audience nach Section 02 verstanden haben soll

- Die vier Modi (Ask, Plan, Agent, Debug) und wann welcher sinnvoll ist.
- Ask = read-only, Agent = Umsetzung, Plan = erst Plan dann Build, Debug = evidenzbasiert.
- Modus-Wechsel ist normal; die **vollständige Demo** folgt in Section 04.

## Prompt-Bausteine (nur zur Einordnung, nicht ausführen)

**Ask (keine Änderungen):**
```text
Use Ask mode. Do not edit files. Return 3 implementation options with trade-offs.
```

**Plan (Struktur vor Umsetzung):**
```text
Switch to Plan mode. Propose 3 phases; for each: files, checks, rollback idea.
```

**Debug (Evidenz vor Fix):**
```text
Use Debug mode. Propose 3 root-cause hypotheses and what instrumentation you would add before fixing.
```

## Doc-Referenzen (Web)

- [Agent (Help)](https://cursor.com/help/ai-features/agent) — Was Agent kann, Modus-Tabelle, Wechsel, Subagents, Checkpoints.
- [Ask Mode (Help)](https://cursor.com/help/ai-features/ask-mode) — Read-only, wann nutzen.
- [Plan Mode (Docs)](https://cursor.com/docs/agent/plan-mode) — Wie Plan Mode funktioniert, wann nutzen, von vorn anfangen.
- [Prompting (Docs)](https://cursor.com/docs/agent/prompting) — @-Mentions, Bilder, Sprache, Modellwechsel.
- [Debug Mode](https://cursor.com/docs/agent/debug-mode) — für Details zu Debug (evidenzbasiert, Instrumentierung).

---

## Talk-Referenz (Sprechtext & Tiefe)

### Einstieg (~30s)

Cursor ist nicht „ein Modus für alles“. Ihr habt **vier Modi** — und der Unterschied ist nicht akademisch: Es geht darum, ob das Modell **lesen** oder **schreiben** darf, ob ihr **erst plant** oder **direkt baut**, und ob ihr **Laufzeit-Evidenz** braucht. Heute nur das Raster; den **kompletten Flow** spielen wir in Section 04.

### Abschluss (~30s)

**Ask** = read-only erkunden, **Agent** = umsetzen, **Plan** = erst Plan freigeben dann bauen, **Debug** = Hypothesen und Instrumentierung vor dem Fix. Modus wechseln ist normal — **Shift+Tab** oder der Mode-Picker.

### Beat-Folge (Referenz)

| Beat | Was du sagst | Was du zeigst |
| --- | --- | --- |
| 1 | Tabelle „Welcher Modus wann?“ — **passendster** Modus, nicht der schnellste. | Tabelle / Folie |
| 2 | Ein Satz pro Modus. | Optional GIFs: [ask.gif](../../../input/modes/ask/ask.gif), [agent.gif](../../../input/modes/agent/agent.gif) |
| 3 | Plan/Debug nur einordnen. | [plan.gif](../../../input/modes/plan/plan.gif), [todos.gif](../../../input/modes/plan/todos.gif), [plan-final.png](../../../input/modes/plan/plan-final.png), [debug.gif](../../../input/modes/debug/debug.gif) |
| 4 | 1–2 Szenarien: Audience rät → ihr löst auf. | Mode-Picker / **Shift+Tab** |
| 5 | `@` kurz; Details Section 03. | Ein `@`-Beispiel nennen |

**Faustregel (laut):** *„Unklarheit oder viele Dateien → Ask oder Plan. Klar und klein → Agent. Unklares Fehlerbild → Debug.“*

### Live-Demo Schritt für Schritt

1. Mode-Picker öffnen.
2. **30s** Tabelle: Ask / Agent / Plan / Debug.
3. **Shift+Tab** zeigen.
4. Szenario „nur verstehen“ → **Ask**; „kleiner Fix“ → **Agent**.
5. Übergang Section 03.

### FAQ (wenn sie fragen)

| Frage | Kurzantwort |
| --- | --- |
| Warum nicht immer Agent? | Exploration und Scope-Klärung **billiger** in Ask/Plan — weniger Diff, weniger Rollback. |
| Plan vs. Agent? | Plan = **freigegebener** Plan zuerst; Agent = direkte Umsetzung (Section 04). |

### Übergang zu Section 03

„Bevor wir den kompletten Flow in **Section 04** durchspielen, machen wir in **Section 03** klar, wie **Rules**, **Context** und **Indexing** zusammen die Antwortqualität steuern.“
