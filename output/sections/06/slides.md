---
marp: true
paginate: true
footer: 'Cursor Agentic Coding — Section 06'
---

# Section 06 — MCP (kurz)

## Model Context Protocol

**Kern:** Externe **Tools** und **Datenquellen** — angebunden an den Agent, mit **sichtbaren Tool-Calls** und **Freigabe**.

[Vollständige Agenda](../../../Workshop.md)

---

# Was MCP bringt

- Weniger **Copy-Paste** von Kontext aus Browser, Design-Tools, Tickets, …
- **Direkte** Anbindung über Server (lokal **stdio** oder remote **HTTP/SSE** — je nach Setup)
- Passt zu **Plan Mode** und **Agent** (siehe [MCP Docs](https://cursor.com/docs/mcp))

---

# Zwei Demos in diesem Workshop

| Demo | Inhalt |
| --- | --- |
| **Chrome DevTools MCP** | Live-Daten aus dem Browser (z. B. **A11y** oder **INP**) |
| **Figma MCP** | Specs, Abstände, Struktur aus dem Design — ohne Raten |

**Detaillierte Schrittfolgen** (zum Mitgehen):

- [Runbook: Chrome DevTools MCP](../../../input/sections/06/01-chrome-devtools-mcp-demo.md)
- [Runbook: Figma MCP](../../../input/sections/06/02-figma-mcp-demo.md)

---

# Sicherheit (Kurzcheckliste)

- **Quelle** des MCP-Servers vertrauen?
- **Rechte** und **Secrets** minimal halten
- Kritische Aktionen **reviewen**
- Mehr: [Agent Security](https://cursor.com/docs/agent/security)

---

# Merksätze

- **Demo 1:** *Daten kommen aus dem Browser über MCP — nicht aus dem Kopf des Modells.*
- **Demo 2:** *Design-Kontext aus Figma — strukturiert, nicht geraten.*

---

# Nächster Teil — Section 07

**Abschluss & Adoption:** konkrete **erste Schritte** fürs Team — plus Q&A.

---

# Weiterführend

- [MCP (Cursor Docs)](https://cursor.com/docs/mcp)
- [MCP Introduction](https://modelcontextprotocol.io/introduction)
- [Chrome DevTools MCP (GitHub)](https://github.com/ChromeDevTools/chrome-devtools-mcp)
- [Web Development (Cursor)](https://cursor.com/for/web-development)
