# Demo 1 — Chrome DevTools MCP (Runbook)

**Während der Live-Demo:** Diese Datei offen lassen und **Schritt für Schritt** abhaken.

**Tool:** [Chrome DevTools MCP (GitHub)](https://github.com/ChromeDevTools/chrome-devtools-mcp)

---

## Chronologie (Ablauf)

| # | Schritt | Notiz |
| - | ------- | ----- |
| 1 | Chrome / Ziel-URL bereit (z. B. localhost, Staging). | |
| 2 | In Cursor: Agent-Chat, MCP für Chrome DevTools ist verbunden. | |
| 3 | **Eine** bounded Aufgabe wählen: **A** Accessibility **oder** **B** INP/Interaktion (nicht beides in derselben Minute). | |
| 4 | Prompt aus Abschnitt „Prompt-Vorlage“ unten einfügen — `[URL]` ersetzen. | |
| 5 | Tool-Call **freigeben** (Approval). | |
| 6 | Ergebnis im Chat zeigen: strukturierte Ausgabe aus Chrome, kein Copy-Paste aus DevTools. | |
| 7 | Takeaway in einem Satz: *Daten kommen direkt aus dem Browser über MCP.* | |

---

## Anforderungs-Template (barebone)

Der Agent soll **genau dieses Format** einhalten — du kannst im Talk sagen: *„Mach es nach diesem Schema.“*

### Gemeinsam (immer)

- **Eine** URL, **eine** Hauptfragestellung.
- Ausgabe: **kurz**, **bulletiert**, **handlungsorientiert** (max. 5–7 Bullets + optional 1 nächster Schritt).
- **Read-only** — in dieser Demo keine Code-Änderungen durch den Agent aus dem MCP heraus.

### Variante A — Accessibility-Check

| Anforderung | Erfüllt wenn |
| ----------- | ------------- |
| Issues mit **Einstufung** (z. B. severity / impact) | ja/nein |
| **Ort** der Auffälligkeit (Komponente, Selektor, grobe Screen-Region) | ja/nein |
| Pro Issue **ein** konkreter nächster Schritt (Fix-Hinweis, keine Romanze) | ja/nein |

### Variante B — INP / Interaktions-Check

| Anforderung | Erfüllt wenn |
| ----------- | ------------- |
| **Welche** Interaktionen geprüft wurden (z. B. Klicks, welche UI-Bereiche) | ja/nein |
| **Messwerte oder qualitative Einordnung** (Latenz, Phasen, Engpass-Hinweis) | ja/nein |
| Klarstellung: **Lab-Kontext** — kein Ersatz für RUM/CrUX | ja/nein |
| **Ein** nächster Debugging-Schritt | ja/nein |

---

## Prompt-Vorlage (copy-paste)

**Variante A (Accessibility):**
```text
Use Chrome DevTools MCP on [URL]. One bounded accessibility-related check.
Output: bullets only — severity, location, one remediation hint per issue, max 5 issues. Read-only, no code edits.
```

**Variante B (INP / Interaktion):**
```text
Use Chrome DevTools MCP on [URL]. One bounded interaction/latency probe relevant to INP-style debugging.
Output: which interactions, findings, lab-only disclaimer, one next debugging step. Read-only.
```
