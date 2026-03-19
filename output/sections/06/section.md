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
- Section 06 zeigt, wie MCP als nächster Schritt praktisch genutzt wird: kleiner Scope, klarer Nutzen, saubere Sicherheitsgrenzen.

## Was du konkret erklärst
1. MCP verbindet den Agenten mit externen Tools/Datenquellen für konkrete Workflows.
2. Starter-Prinzip: mit read-fokussiertem Use Case beginnen, keine breite Write-Automation am Anfang.
3. Sicherheitsgrenze: MCP-Connection und Tool-Calls sind approval-gated; least privilege bleibt Pflicht.
4. Ziel ist weniger Kontext-Chaos: externe Daten nur gezielt holen, nicht pauschal "alles anbinden".

## Was du live in Cursor zeigst (Kern-Demo)
1. **MCP in einem Satz** einordnen: "Externer Kontext/Tools kontrolliert im Agent-Flow."
2. **Safe Starter Use Case** zeigen: z. B. **Chrome DevTools MCP A11y Quick Check** auf einer konkreten Seite.
   - Seite öffnen, wichtigen Screen scannen, 2-3 Accessibility-Auffälligkeiten extrahieren.
   - Fokus auf read/analyze, kein auto-fix.
3. Ergebnis kurz in den laufenden Workflow rückführen (1 Entscheidung oder 1 nächster Schritt).
4. Abschlussfrage: "Welcher MCP-Use-Case wäre für euer Team der erste Pilot?"

## Prompt-/Command-Bausteine
```text
Use MCP only for one bounded task:
1) fetch exactly the external context we need
2) summarize only actionable findings
3) suggest one next implementation step
Ask for approval before any write-capable action.
```

```text
Use Chrome DevTools MCP for a bounded accessibility check on this page.
Return only:
1) top 3 a11y issues with severity
2) where they appear (element/screen area)
3) one concrete remediation hint per issue
No code changes, analysis only.
```

## Plan B (wenn Demo fehlschlägt)
- Einen vorbereiteten MCP-Output zeigen (Input → kurze Synthese → nächster Schritt).
- Backup-Variante: vorbereiteten A11y-Report-Snapshot zeigen und nur die Priorisierung live diskutieren.

## Was die Audience nach Section 06 verstanden haben soll
- MCP ist wertvoll, wenn Scope und Berechtigungen klein und klar bleiben.
- Der erste Pilot sollte eng begrenzt und direkt nutzbar sein.
- In Section 07 folgt Q&A und konkreter Team-Startplan.

## Doc-Referenzen (Web)
- [MCP](https://cursor.com/docs/mcp)
- [Agent Security](https://cursor.com/docs/agent/security)
- [Prompting Agents](https://cursor.com/docs/agent/prompting)
