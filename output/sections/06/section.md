# Section 06 - MCP Small Demo

| Feld | Wert |
| --- | --- |
| Section-ID | `06` |
| Owner | `Dogan` |
| Zeit | `4 Min` |
| Status | `ready-for-demo` |
| Kern-Demo | `ja` |

## Navigation
- [Workshop Master](../../../Workshop.md)
- [Prev: Section 05](../05/section.md)
- [Next: Section 07](../07/section.md)

## Ziel dieser Section
- Zwei **kleine MCP-Beispiele**: (1) **Google Chrome** über **Chrome DevTools MCP**, (2) **Figma MCP** mit einer echten Design-System-Komponente.
- **Kernbotschaft Chrome:** Chrome läuft im MCP-Kontext — der Agent hat **direkten Zugriff** auf das, was im Browser passiert. Ihr müsst **nichts** aus DevTools kopieren; die KI bekommt die **exakten Daten**, die sie braucht, mit **wenig Rauschen** und **klarem Kontext**.
- **Kernbotschaft Figma:** Gleiches Prinzip für Design — Specs aus Figma statt Screenshot-Interpretation; optional **Inline-HTML** für die Komponente; **Prototyping in Figma** als Ergänzung, wenn ihr im Design iteriert.

## Inputs für diese Section (Repo)

| Ressource | Pfad |
| --------- | ---- |
| Übersicht | [input/sections/06/README.md](../../../input/sections/06/README.md) |
| Chrome MCP (A11y vs INP, Prompts) | [input/sections/06/chrome-devtools-mcp.md](../../../input/sections/06/chrome-devtools-mcp.md) |
| Figma MCP (Link, Storyline, Prompts) | [input/sections/06/figma-mcp.md](../../../input/sections/06/figma-mcp.md) |
| Plan B A11y-Beispiel | [a11y-localhost-3000-de.md](../../a11y-localhost-3000-de.md) |
| Plan B INP-Beispiel | [inp-localhost-3000-de.md](../../inp-localhost-3000-de.md) |

## Demo-Reihenfolge (empfohlen)

1. **Chrome DevTools MCP** (ca. 2 min)  
2. **Figma MCP** (ca. 1:30 min)

## Was du konkret erklärst

1. **MCP:** Verbindet den Agent mit externen Tools — hier Browser und Figma.
2. **Chrome im MCP-Kontext:** Voller Zugriff auf das, was Chrome/DevTools liefern (Audits, DOM, Automation) — **kein Copy-Paste**; präziser, strukturierter Kontext für A11y **oder** INP/Interaktion (eine Variante pro Talk reicht).
3. **Figma MCP:** Komponente aus dem **ONE Core Library** Design System; danach zeigen, wie man daraus z. B. **inline HTML** ableitet; **Prototyping in Figma** kurz erwähnen (Design-Iteration bleibt in Figma, Agent nutzt weiterhin den Node/Link).
4. **Sicherheit:** MCP und Tool-Calls approval-pflichtig; kleine, begrenzte Tasks.

## Figma-Link (Design-System-Komponente)

- [ONE — Core Library (Dev Mode)](https://www.figma.com/design/MqE19YSYeVMGeOi4Oa8wWs/ONE---Core-Library?node-id=1718-8124&m=dev) — `node-id=1718-8124`

## Was du live in Cursor zeigst (Kern-Demo)

1. **Einordnung** (ca. 30 s): Zwei Beispiele — Chrome = Laufzeit/exakte Browser-Daten, Figma = Design-Specs ohne Rauschen.

2. **Chrome DevTools MCP** (ca. 2 min):
   - Chrome über MCP angebunden; Seite z. B. `localhost` oder Staging.
   - **Entweder** kurzer **Accessibility**-Check (Lighthouse/axe über MCP) **oder** kurzer **INP/Interaktions**-Check — gleiche Story: *„Die KI liest direkt aus Chrome, nicht aus dem Chat-Text.“*
   - Takeaway: Gezielte Daten, kein manuelles Übertragen.

3. **Figma MCP** (ca. 1:30 min):
   - Obigen Link öffnen / dem Agent geben.
   - Agent holt Kontext (Struktur, Tokens, Specs) über Figma MCP.
   - Kurz zeigen: **„Mach die Komponente als inline HTML“** (oder minimaler Snippet) — nachvollziehbar aus Figma-Kontext.
   - Optional: **Prototyping in Figma** — wenn ihr im File prototypisiert, bleibt der Workflow „Design in Figma, Umsetzung mit Agent + MCP“ konsistent.

4. **Abschluss:** Welcher MCP-Pilot passt zuerst zu eurem Team — Browser, Figma, beides?

## Prompt-/Command-Bausteine

**Chrome — A11y (read-only):**
```text
Use Chrome DevTools MCP. Bounded accessibility check on [URL].
Return: top issues with severity, location, one remediation hint each. Analysis only.
```

**Chrome — INP / Interaktion (Lab):**
```text
Use Chrome DevTools MCP on [URL]. Probe key interactions and summarize latency / INP-relevant findings (lab context). One concrete next debugging step.
```

**Figma — Komponente + inline HTML:**
```text
Use Figma MCP with:
https://www.figma.com/design/MqE19YSYeVMGeOi4Oa8wWs/ONE---Core-Library?node-id=1718-8124&m=dev

Summarize dev-relevant specs (tokens, spacing, type). Then propose minimal inline HTML that matches this component. Read-only in Figma.
```

**Allgemein:**
```text
Use MCP for one bounded task only: fetch the exact context needed, summarize actionable findings, one next step. Approve writes explicitly.
```

## Plan B (wenn Live-Demo hakt)

- Vorbereitete Outputs zeigen: [a11y-localhost-3000-de.md](../../a11y-localhost-3000-de.md) oder [inp-localhost-3000-de.md](../../inp-localhost-3000-de.md).
- Nur Chrome **oder** nur Figma live; die andere Demo in 2 Sätzen + Link ([figma-mcp.md](../../../input/sections/06/figma-mcp.md)).

## Was die Audience nach Section 06 verstanden haben soll

- Chrome über MCP = direkter, präziser Browser-Kontext (A11y oder INP), ohne Copy-Paste.
- Figma über MCP = Design-System-Specs für echte Umsetzung (z. B. inline HTML); Prototyping in Figma als optionaler Design-Teil.
- MCP mit kleinem Scope und klaren Prompts — Section 07: Q&A und nächste Schritte.

## Doc-Referenzen (Web)
- [MCP](https://cursor.com/docs/mcp)
- [Chrome DevTools MCP (GitHub)](https://github.com/ChromeDevTools/chrome-devtools-mcp)
- [Agent Security](https://cursor.com/docs/agent/security)
- [Prompting Agents](https://cursor.com/docs/agent/prompting)
