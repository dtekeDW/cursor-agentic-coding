---
marp: true
paginate: true
footer: 'Cursor Agentic Coding — Section 02'
---

# Section 02 — Modi: Ask, Plan, Agent, Debug

**Ziel:** Das richtige Werkzeug für die Aufgabe — nicht „immer Agent“.

[Vollständige Agenda](../../../Workshop.md)

---

# Die vier Modi auf einen Blick

| Modus | Wofür? | Dateien ändern? |
| --- | --- | --- |
| **Ask** | Verstehen, erkunden, Optionen | **Nein** (read-only) |
| **Agent** | Bauen, refactoren, fixen, Tests | **Ja** |
| **Plan** | Komplex: erst Plan, dann Freigabe, dann Umsetzung | **Ja** (nach Plan) |
| **Debug** | Bugs mit Laufzeit / Logs / Hypothesen | **Ja** |

---

# Faustregel

- **Unklarheit** oder **viele Dateien** → **Ask** oder **Plan**
- **Kleine, klare** Aufgabe → **Agent**
- **Unklares Fehlerbild** → **Debug**

> Immer den **passendsten** Modus wählen — nicht den schnellsten.

---

# Ein Satz pro Modus

- **Ask** — Antworten und Exploration, **keine** Edits ([Ask Mode](https://cursor.com/help/ai-features/ask-mode))
- **Agent** — Suchen, Editieren, Terminal — Standard für Umsetzung ([Agent](https://cursor.com/help/ai-features/agent))
- **Plan** — Anforderungen klären, Plan erstellen, **von euch freigeben**, dann bauen ([Plan Mode](https://cursor.com/docs/agent/plan-mode))
- **Debug** — Hypothesen, Instrumentierung, Evidenz, dann Fix ([Debug Mode](https://cursor.com/docs/agent/debug-mode))

---

# Modus wechseln

- **Dropdown** im Agent-Panel (Mode-Picker)
- **Shift+Tab** — rotiert durch die Modi
- Tipp: Bei **Themenwechsel** oft ein **neuer Chat** — sauberer Kontext

---

# Kontext kurz: `@` und mehr

- Mit **`@`** Dateien, Ordner, Symbole, Docs anhängen — gezielt statt „alles“
- **Bilder** und **Spracheingabe** sind möglich
- Details zu **Rules** und **Indexing** → **Section 03**

---

# Visuelle Einordnung (optional)

- [Ask (GIF)](../../../input/modes/ask/ask.gif) · [Agent (GIF)](../../../input/modes/agent/agent.gif)
- [Plan (GIF)](../../../input/modes/plan/plan.gif) · [Todos (GIF)](../../../input/modes/plan/todos.gif)
- [Plan-Abschluss (PNG)](../../../input/modes/plan/plan-final.png) · [Debug (GIF)](../../../input/modes/debug/debug.gif)

---

# Was als Nächstes kommt

- **Section 03:** **Rules**, **Context**, **Indexing** — wie ihr Antwortqualität steuert
- **Section 04:** Kompletter **Plan-First**-Ablauf live

---

# Weiterführend

- [Agent (Help)](https://cursor.com/help/ai-features/agent)
- [Ask Mode](https://cursor.com/help/ai-features/ask-mode)
- [Plan Mode](https://cursor.com/docs/agent/plan-mode)
- [Debug Mode](https://cursor.com/docs/agent/debug-mode)
- [Prompting](https://cursor.com/docs/agent/prompting)
