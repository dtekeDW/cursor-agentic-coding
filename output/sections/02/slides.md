---
marp: true
paginate: true
footer: 'Cursor Agentic Coding — Section 02'
---

# Section 02 — Modi in der Praxis

[Vollständige Agenda](../../../Workshop.md)

---

# Section 02 — Reihenfolge (8 Min)

1. **Vier Modi** — wann welcher Modus?
2. **Shortcuts** — **Shift+Tab**, Mode-Picker
3. **Zwei Prompt-Beispiele** — **Ask** und **Debug**
4. **Settings-Sneak-Peek** — Agents, Indexing
5. Übergang zu **Section 03** (Context & Rules)

---

# Die vier Modi (Kern-Map)

| Modus | Kurz |
| ----- | ---- |
| **Ask** | Read-only verstehen: Architektur, Flows, Wo liegt was? |
| **Plan** | Erst klären, Optionen vergleichen, Phasen planen |
| **Agent** | Umsetzen: Dateien, Terminal, Tools |
| **Debug** | Root-Cause mit Logs/Hypothesen statt Rate-Fix |

---

# Wann **nicht** im Agent bleiben?

- Standard ist oft **Agent**.
- Wenn ihr nur verstehen wollt: **Ask** statt unnötige Edits.
- Bei komplexen Tasks: **Plan** vor der Umsetzung.
- Bei zähen Bugs: **Debug** statt blindem Refactor.

---

# Mode-Switch in 5 Sekunden

- **Shift+Tab** rotiert durch die Modi.
- Mode-Picker im Chat zeigt den aktiven Modus klar.
- Thema wechseln? Häufig **neuen Chat** öffnen.

---

# Prompt-Beispiel 1 — Ask Mode

```text
Use Ask mode. Do not edit files.
Explain how our message queue works and where it is implemented.
List the 3 most relevant files first.
```

**Ziel:** schnell verstehen, null Risiko für Code-Änderungen.

---

# Prompt-Beispiel 2 — Debug Mode

```text
Use Debug mode.
We have flaky terminal output in our build step.
Propose 3 root-cause hypotheses and which instrumentation to add first.
```

**Ziel:** evidenzbasiert arbeiten, nicht sofort am falschen Ort fixen.

---

# Settings-Sneak-Peek (nur kurz)

| Bereich | Was ihr sagt |
| --- | --- |
| **Agents** | Tools, MCP, Allowlist, Web/Fetch, Sandbox |
| **Indexing** | „Brain“ der Codebase, wichtig bei großen Repos |
| **Rules/Skills** | Kommt jetzt vertieft in Section 03/04 |

---

# Als Nächstes

- **Section 03:** Context, Rules, `AGENTS.md`, Hierarchie.

---

# Weiterführend

- [Agent (Help)](https://cursor.com/help/ai-features/agent)
- [Ask Mode](https://cursor.com/help/ai-features/ask-mode)
- [Plan Mode](https://cursor.com/docs/agent/plan-mode)
- [Debug Mode](https://cursor.com/docs/agent/debug-mode)
- [Prompting](https://cursor.com/docs/agent/prompting)
