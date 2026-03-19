# Figma MCP — Section-6-Input

## Design-System-Komponente (Demo)

**ONE — Core Library** (Dev Mode-Link):

- [ONE — Core Library (Figma)](https://www.figma.com/design/MqE19YSYeVMGeOi4Oa8wWs/ONE---Core-Library?node-id=1718-8124&m=dev)

`node-id=1718-8124` — konkrete Komponente aus dem Design System; für die Demo: Agent holt Specs/Tokens/Struktur über Figma MCP statt manuell zu beschreiben.

## Storyline für den Talk

1. **Kontext:** „Hier ist unsere Komponente im Design System — der Agent sieht sie über Figma MCP.“
2. **Implementation:** In HTML (oder eurem Stack) **inline** die Komponente nachbauen — Specs kommen aus Figma, nicht aus Screenshots im Chat.
3. **Optional:** **Prototyping in Figma** erwähnen — wenn ihr im Design noch iteriert, kann man parallel Prototypen nutzen; der Agent bleibt am gleichen File/Node dran, sobald der Link stimmt.

## Prompt-Bausteine

**Design-Kontext holen:**
```text
Use Figma MCP with this URL:
https://www.figma.com/design/MqE19YSYeVMGeOi4Oa8wWs/ONE---Core-Library?node-id=1718-8124&m=dev

Summarize for implementation: structure, spacing, typography, colors/tokens, and any dev-mode specs. Read-only in Figma.
```

**Nachbau (HTML inline, Beispiel):**
```text
Based on the Figma MCP output for that node, propose minimal inline HTML (or one component) that matches the design. Keep it scoped to this component only.
```

## Hinweis

Figma MCP braucht gültige Session/Auth wie in eurer Cursor-Konfiguration. Wenn live nichts geht: Konzept + Link zeigen; Chrome-Demo trägt die Section.
