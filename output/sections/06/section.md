# Section 06 — MCP Small Demo

**Vollständige Section-Referenz** (Inhalt + Sprechtext).  
**Kurz am Pult:** [presentation.md](presentation.md) · **Folien:** [slides.md](slides.md)

| Feld | Wert |
| --- | --- |
| Section-ID | `06` |
| Owner | `Dogan` |
| Zeit | `4 Min` |
| Status | `ready-for-demo` |
| Kern-Demo | `ja` |

## Navigation
- [Ablauf-Checkliste (Referent:innen)](presentation.md)
- [Folien (Audience)](slides.md)
- [Workshop Master](../../../Workshop.md)
- [Prev: Section 05](../05/section.md)
- [Next: Section 07](../07/section.md)

## Hauptquelle (MCP)

**[Model Context Protocol (MCP) — Cursor Docs](https://cursor.com/docs/mcp)**

Diese Section fasst MCP **schematisch** nach dieser Doku zusammen. **Details und Ablauf der zwei Demos** stehen **nur** in den zwei Dateien unter `input/sections/06/` — dort chronologisch zum Mitgehen während Cursor/Browser.

---

## Zwei Demo-Runbooks (Input)

| Demo | Datei | Inhalt |
| ---- | ----- | ------ |
| **1 — Chrome DevTools MCP** | [01-chrome-devtools-mcp-demo.md](../../../input/sections/06/01-chrome-devtools-mcp-demo.md) | Chronologie + **Anforderungs-Template** (Accessibility **oder** INP), Prompts, Link zum [Chrome DevTools MCP](https://github.com/ChromeDevTools/chrome-devtools-mcp) |
| **2 — Figma MCP** | [02-figma-mcp-demo.md](../../../input/sections/06/02-figma-mcp-demo.md) | Chronologie + Anforderungs-Template, Figma-Link, Prompts |

Im Talk: Section 6 kurz erklären; **live** die jeweilige MD offen und Schritt für Schritt durchgehen, dann im Chat ausführen.

---

## MCP — kurz nach Cursor Docs

### Was & warum

| Punkt | Kurz |
| ----- | ---- |
| **Was** | [MCP](https://modelcontextprotocol.io/introduction) verbindet Cursor mit **externen Tools und Datenquellen** ([Cursor Docs](https://cursor.com/docs/mcp)). |
| **Warum** | Statt Kontext immer wieder manuell zu erklären: **direkt** an eure Tools anbinden (Browser, Figma, …). Server in vielen Sprachen möglich (stdout oder HTTP). |

### Wie es technisch läuft

MCP-Server stellen Fähigkeiten über das Protokoll bereit. **Transports** (Auszug aus den Docs):

| Transport | Umgebung | Deployment | Nutzer | Input | Auth |
| --------- | -------- | ---------- | ------ | ----- | ---- |
| **stdio** | Lokal | Cursor | Single | Shell command | Manuell |
| **SSE** | Lokal/Remote | Server | Multiple | SSE-URL | OAuth |
| **Streamable HTTP** | Lokal/Remote | Server | Multiple | HTTP-URL | OAuth |

**Protokoll / Erweiterungen** (Auszug):

| Feature | Support | Kurz |
| ------- | ------- | ---- |
| Tools | ja | Funktionen, die das Modell ausführen kann |
| Prompts | ja | Vorlagen / Workflows |
| Resources | ja | Strukturierte Datenquellen |
| Roots / Elicitation / Apps | ja | siehe [Docs](https://cursor.com/docs/mcp) |

### Installation & Konfiguration (Stichworte)

- **Marketplace** / **cursor.directory** — One-Click; OAuth wo nötig.
- **`mcp.json`:** `command`/`args`/`env` (stdio) oder `url`/`headers`/`auth` (remote, z. B. statisches OAuth für Figma/Linear).
- **Orte:** `.cursor/mcp.json` (Projekt) · `~/.cursor/mcp.json` (global).
- **Interpolation:** z. B. `${env:NAME}`, `${workspaceFolder}` — siehe [Docs](https://cursor.com/docs/mcp).

### Nutzung im Chat

- Agent nutzt MCP-Tools unter **Available Tools** wenn passend — auch im **Plan Mode** ([Docs](https://cursor.com/docs/mcp)).
- **Tool approval** standardmäßig; Auto-run optional (wie Terminal).
- OAuth-Redirect u. a.: `cursor://anysphere.cursor-mcp/oauth/callback` (in Docs beschrieben).

### Sicherheit (Checkliste aus den Docs)

- Quelle vertrauen · Berechtigungen prüfen · API-Keys minimal · bei Kritischem Code reviewen · MCP-Server können externe Dienste und Code für euch ansprechen.

### Praxis-Beispiele (Cursor)

- [Web Development guide](https://cursor.com/for/web-development) — Linear, Figma, Browser im Workflow.

---

## Was du in dieser Section sagst (ohne Doppelung zu den Runbooks)

1. **MCP** = externes Tool/Datenquelle an den Agent (siehe Tabellen oben + [cursor.com/docs/mcp](https://cursor.com/docs/mcp)).
2. **Demo 1:** Ablauf und Anforderungen **nur** aus [01-chrome-devtools-mcp-demo.md](../../../input/sections/06/01-chrome-devtools-mcp-demo.md) — im Chat zeigen, MCP-Tool freigeben, Ergebnis.
3. **Demo 2:** Ablauf **nur** aus [02-figma-mcp-demo.md](../../../input/sections/06/02-figma-mcp-demo.md).
4. **Keine** langen INP-/A11y-Erklärungen hier — das steckt im Template der Datei `01` als **Anforderungs-Checkliste**.

## Was die Audience mitnehmen soll

- MCP verbindet Cursor kontrolliert mit externen Systemen (Docs: Transports, Tools, Approval).
- Zwei konkrete Pfade: **Chrome DevTools MCP** + **Figma MCP** — Ablauf in den zwei Input-MDs.
- Section 07: Q&A.

## Doc-Referenzen (Web)

1. [MCP (Cursor Docs)](https://cursor.com/docs/mcp)  
2. [MCP Introduction (modelcontextprotocol.io)](https://modelcontextprotocol.io/introduction)  
3. [Chrome DevTools MCP (GitHub)](https://github.com/ChromeDevTools/chrome-devtools-mcp)  
4. [Agent Security](https://cursor.com/docs/agent/security)  
5. [Web Development (Cursor)](https://cursor.com/for/web-development)

---

## Talk-Referenz (Sprechtext & Tiefe)

### Einstieg (~45s)

**MCP** verbindet Cursor mit **externen Tools** — sichtbare Tool-Calls, **Approval**. Statt Kontext manuell zu basteln: **Browser**, **Figma**, … direkt angebunden ([MCP Docs](https://cursor.com/docs/mcp)).

### Abschluss (~20s)

Zwei Pfade: **Chrome DevTools MCP** + **Figma MCP** — chronologisch die **Runbooks** unter `input/sections/06/`.

### Beat-Folge (Referenz)

| Beat | Was du sagst | Was du zeigst |
| --- | --- | --- |
| 1 | Was & warum MCP; Transports | Docs / Stichworte |
| 2 | Demo 1 Runbook | [01-chrome-devtools-mcp-demo.md](../../../input/sections/06/01-chrome-devtools-mcp-demo.md) |
| 3 | Prompt, Approval, Output | Chat |
| 4 | Demo 2 Runbook | [02-figma-mcp-demo.md](../../../input/sections/06/02-figma-mcp-demo.md) |
| 5 | Sicherheit ein Satz | — |

**Takeaways:** *Daten aus dem Browser über MCP.* · *Design-Kontext aus Figma, nicht raten.*

### Live-Demo Schritt für Schritt

1. **Vorbereitung:** Chrome/URL; MCP verbunden; Figma OAuth.
2. **01-chrome-devtools-mcp-demo.md** — Chronologie; Prompt; **eine** Variante (A11y oder INP).
3. Tool-Approval kurz **begründen**.
4. **02-figma-mcp-demo.md** — Schritte + Prompts.
5. Schließen: Section 07.

### FAQ (wenn sie fragen)

| Frage | Kurzantwort |
| --- | --- |
| Wo konfigurieren? | `.cursor/mcp.json` / `~/.cursor/mcp.json` |
| Plan Mode? | MCP-Tools können auch dort verfügbar sein |

### Übergang zu Section 07

„**Adoption & Q&A** — nächste Schritte fürs Team.“
