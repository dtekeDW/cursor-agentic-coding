---
marp: true
paginate: true
footer: 'Cursor Agentic Coding — Section 06'
---

# Section 06 — MCP (4 Min)

## Model Context Protocol

**Kern:** Externe Tools und Datenquellen im Agent-Workflow, mit sichtbaren Tool-Calls und Approval.

[Vollständige Agenda](../../../Workshop.md)

---

# Was MCP bringt

- Weniger Copy-Paste aus Browser, Figma, Tickets
- Direkte Server-Anbindung (`stdio`, `SSE`, `HTTP`)
- Funktioniert in Agent und Plan Mode

---

# 1 Hauptpfad live

| Demo | Fokus |
| --- | --- |
| **Chrome DevTools MCP** | Eine konkrete Analyse (A11y **oder** INP) |

**Runbook:**
- [01-chrome-devtools-mcp-demo.md](../../../input/sections/06/01-chrome-devtools-mcp-demo.md)

---

# 2. Pfad als Referenz (optional)

| Demo | Fokus |
| --- | --- |
| **Figma MCP** | Design-Struktur und Specs ohne Raten |

**Runbook:**
- [02-figma-mcp-demo.md](../../../input/sections/06/02-figma-mcp-demo.md)

---

# Sicherheit (Kurzcheckliste)

- **Quelle** des MCP-Servers vertrauen?
- **Rechte** und **Secrets** minimal halten
- Kritische Aktionen **reviewen**
- Mehr: [Agent Security](https://cursor.com/docs/agent/security)

---

# Merksätze

- *Daten kommen aus echten Tools, nicht aus Modell-Raten.*
- *MCP beschleunigt, aber braucht saubere Approval-Disziplin.*

---

# Nächster Teil — Section 07

**Abschluss & Adoption:** konkrete **erste Schritte** fürs Team — plus Q&A.

---

# Weiterführend

- [MCP (Cursor Docs)](https://cursor.com/docs/mcp)
- [MCP Introduction](https://modelcontextprotocol.io/introduction)
- [Chrome DevTools MCP (GitHub)](https://github.com/ChromeDevTools/chrome-devtools-mcp)
- [Web Development (Cursor)](https://cursor.com/for/web-development)
