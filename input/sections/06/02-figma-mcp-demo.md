# Demo 2 — Figma MCP (Runbook)

**Während der Live-Demo:** Diese Datei offen lassen und **Schritt für Schritt** abhaken.

**Doku-Kontext:** [MCP (Cursor)](https://cursor.com/docs/mcp) — OAuth/Remote-Server u. a. für Figma relevant.

---

## Chronologie (Ablauf)

| # | Schritt | Notiz |
| - | ------- | ----- |
| 1 | Figma-MCP in Cursor konfiguriert / eingeloggt (OAuth nach Provider-Vorgabe). | |
| 2 | **Fester Demo-Link** bereithalten (unten). | |
| 3 | Schritt 1 Prompt: **nur** Specs/Kontext aus Figma holen (read-only). | |
| 4 | Tool-Call(s) **freigeben**. | |
| 5 | Ausgabe zeigen: Tokens, Abstände, Typo, Struktur — ohne Screenshot-Paste im Chat. | |
| 6 | Schritt 2 Prompt (optional): **minimales** inline HTML oder ein Component-Snippet **nur** für diesen Node. | |
| 7 | Optional erwähnen: **Prototyping** bleibt in Figma; derselbe Link/Node ist weiter die Quelle. | |
| 8 | Takeaway: *Design-Kontext über MCP, nicht aus dem Kopf des Modells raten.* | |

---

## Demo-Link (Design System)

| Feld | Wert |
| ---- | ---- |
| **File** | ONE — Core Library |
| **URL** | [Figma öffnen](https://www.figma.com/design/MqE19YSYeVMGeOi4Oa8wWs/ONE---Core-Library?node-id=1718-8124&m=dev) |
| **Node** | `node-id=1718-8124` |

---

## Anforderungs-Template (barebone)

### Schritt 1 — Kontext aus Figma

| Anforderung | Erfüllt wenn |
| ----------- | ------------- |
| Struktur der Komponente in **kurzen** Bullets | ja/nein |
| Relevante **Spacing / Typografie / Farben oder Tokens** | ja/nein |
| Nur **Dev-Mode-relevante** Infos, kein Design-Review-Essay | ja/nein |

### Schritt 2 — Umsetzung (optional, scoped)

| Anforderung | Erfüllt wenn |
| ----------- | ------------- |
| **Nur** diese Node, keine anderen Screens | ja/nein |
| Output: **minimal** (inline HTML oder ein klar begrenztes Snippet) | ja/nein |

---

## Prompt-Vorlage (copy-paste)

**Schritt 1:**
```text
Use Figma MCP with:
https://www.figma.com/design/MqE19YSYeVMGeOi4Oa8wWs/ONE---Core-Library?node-id=1718-8124&m=dev

Return dev-focused summary only: structure, spacing, typography, colors/tokens. Short bullets. Read-only in Figma.
```

**Schritt 2 (optional):**
```text
From the Figma MCP summary above: propose minimal inline HTML for this node only. No unrelated components or files.
```
