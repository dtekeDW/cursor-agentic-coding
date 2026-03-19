# Chrome DevTools MCP — Section-6-Input

## Kernidee

**Chrome läuft im MCP-Kontext:** Der Agent hat Zugriff auf das, was im Browser wirklich passiert (DOM, Audits, Automation) — **ohne** Screenshots oder Copy-Paste von DevTools-Texten in den Chat.

- **Präziser Kontext:** Die KI bekommt die **exakten Daten**, die sie braucht (z. B. Lighthouse-Ergebnis, Snapshot, Script-Evaluation), nicht unnötigen Rauschen aus dem ganzen Repo.
- **Bounded Task:** Eine klare Fragestellung (A11y **oder** INP) hält Scope und Kontext fokussiert.

## Demo-Variante wählen (eine reicht für die Section)

| Variante | Nutzen für Devs | Kurz |
| -------- | ----------------- | ---- |
| **Accessibility** | Compliance, UX, Lighthouse/axe über MCP | Schnell erklärbar, read-only |
| **INP / Interaktion** | Core Web Vitals, „fühlt sich die Seite schnell an?“ | Lab-Probe, zeigt Automation + Performance-Denken |

Beide nutzen dasselbe Prinzip: **MCP = direkter Zugriff auf Chrome**, nicht manuelles Übertragen von Messwerten.

## Prompt-Bausteine

**A11y (read-only):**
```text
Use Chrome DevTools MCP. Run a bounded accessibility check on http://localhost:3000/de (or [URL]).
Return: top issues with severity, where they appear, one remediation hint each. Analysis only, no code changes.
```

**INP / Interaktion (Lab, read-only Analyse):**
```text
Use Chrome DevTools MCP on [URL]. Probe user interactions (e.g. clicks on main UI) and summarize interaction latency / INP-relevant findings. Lab context only — not a substitute for RUM. Suggest one next debugging step.
```

## Referenz

- [Chrome DevTools MCP (GitHub)](https://github.com/ChromeDevTools/chrome-devtools-mcp)
