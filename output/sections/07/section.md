# Section 07 - MCP praktisch: externe Kontexte kontrolliert einbinden

| Feld | Wert |
| --- | --- |
| Section-ID | `07` |
| Owner | `Miguel` |
| Zeit | `4 Min` |
| Status | `ready-for-demo` |
| Kern-Demo | `ja` |

## Navigation
- [Workshop Master](../../Workshop.md)
- [Prev: Section 06](../06/section.md)
- [Next: Section 08](../08/section.md)

## Ziel dieser Section
- Section 07 zeigt, wie MCP als naechster Schritt praktisch genutzt wird: kleiner Scope, klarer Nutzen, saubere Sicherheitsgrenzen.

## Was du konkret erklärst
1. MCP verbindet den Agenten mit externen Tools/Datenquellen fuer konkrete Workflows.
2. Starter-Prinzip: mit read-fokussiertem Use Case beginnen, keine breite Write-Automation am Anfang.
3. Sicherheitsgrenze: MCP-Connection und Tool-Calls sind approval-gated; least privilege bleibt Pflicht.
4. Ziel ist weniger Kontext-Chaos: externe Daten nur gezielt holen, nicht pauschal "alles anbinden".

## Was du live in Cursor zeigst (Kern-Demo)
1. **MCP in einem Satz** einordnen: "Externer Kontext/Tools kontrolliert im Agent-Flow."
2. **Safe Starter Use Case** zeigen: **Chrome DevTools MCP A11y Quick Check** auf einer konkreten Seite.
   - Seite oeffnen, wichtigen Screen scannen, 2-3 Accessibility-Auffaelligkeiten extrahieren.
   - Fokus auf read/analyze, kein auto-fix.
3. Ergebnis kurz in den laufenden Workflow rueckfuehren (1 Entscheidung oder 1 naechster Schritt).
4. Abschlussfrage: "Welcher MCP-Use-Case waere fuer euer Team der erste Pilot?"

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
- Einen vorbereiteten MCP-Output zeigen (Input -> kurze Synthese -> naechster Schritt).
- Backup-Variante: vorbereiteten A11y-Report-Snapshot zeigen und nur die Priorisierung live diskutieren.

## Was die Audience nach Section 07 verstanden haben soll
- MCP ist wertvoll, wenn Scope und Berechtigungen klein und klar bleiben.
- Der erste Pilot sollte eng begrenzt und direkt nutzbar sein.
- In Section 08 wird daraus ein konkreter Team-Startplan (Open Round + Handover).

## Doc-Referenzen (Web)
- [MCP](https://cursor.com/docs/mcp)
- [Agent Security](https://cursor.com/docs/agent/security)
- [Prompting Agents](https://cursor.com/docs/agent/prompting)
