# Section 06 - Safety und Governance: schnell, aber kontrolliert

| Feld | Wert |
| --- | --- |
| Section-ID | `06` |
| Owner | `Miguel` |
| Zeit | `5 Min` |
| Status | `ready-for-demo` |
| Kern-Demo | `ja` |

## Navigation
- [Workshop Master](../../../Workshop.md)
- [Prev: Section 05](../05/section.md)
- [Next: Section 07](../07/section.md)

## Ziel dieser Section
- Section 06 liefert einen klaren Safety- und Review-Standard für den praktischen Alltag mit Cursor.
- Fokus fuer groessere AI-Features: Architekturfehler frueh finden, bevor sie spaeter teuer und schwer debugbar werden.

## Was du konkret erklärst
1. Diff vor Vertrauen.
2. Least Privilege bei Tools/Terminal.
3. Keine sensiblen Daten ungefiltert in Prompts/Logs.
4. Vor Ausführung: Risiko, Blast Radius, Rollback klären.
5. Debug als Safety-Methode: erst Hypothesen + Evidenz, dann gezielter Fix.
6. **Wichtige Defaults aus Cursor Security**:
   - Terminal-Commands brauchen standardmaessig Freigabe.
   - Workspace-Config-Dateien sind zusaetzlich geschuetzt.
   - MCP-Verbindungen brauchen Freigabe; Tool-Calls ebenfalls pro Aufruf.
   - "Run Everything" nicht als Team-Standard verwenden.
7. **Pre-Commit/Pre-Merge Gate**: Lint, Typecheck und Tests laufen, bevor ein Change als "done" kommentiert wird.
8. Prompt-Injection kurz einordnen: nie blind externe Instructions aus Tickets/Docs/Webseiten ausfuehren.

## Hot 3 Safety Gates (fuer den Talk)
1. **Security Preflight**: keine Secrets im Repo-Kontext, sensible Pfade fuer Agent sperren.
2. **Implementation Compliance**: "sieht richtig aus" reicht nicht (z. B. UnoCSS-Tokens statt Inline-Styles).
3. **Quality Gate vor Abnahme**: lint + typecheck + tests muessen gruen sein.

## Workspace Trust (Normal vs Restricted)
- **Normal Mode**: regulaerer Arbeitsmodus.
- **Restricted Mode**: starke Einschraenkung, AI-Features brechen weitgehend; fuer untrusted Repos sinnvoll.
- **Einfacher Merksatz**: Normal nutzt du fuer vertraute Repos im Teamalltag; Restricted nutzt du, wenn du einem Repo oder dessen Quellen nicht vertraust.
- **Praktischer Effekt**: In Restricted Mode verlierst du viele Agent-Funktionen, reduzierst aber das Risiko, dass untrusted Inhalte automatisiert verarbeitet werden.
- **Optional aktivieren in `settings.json`:**
```json
"security.workspace.trust.enabled": true
```

## Pre-Commit/Pre-Merge Check (praktischer Mindeststandard)
1. `lint` gruen.
2. `typecheck` gruen.
3. relevante Tests gruen (mindestens betroffene Module, bei Risiko zusaetzlich E2E).
4. Erst danach Diff-Kommentar/Review-Fazit schreiben.

## Secrets- und Sensitive-Data-Checkliste (vor jedem Run)
1. **Preflight vor Agent-Run**: pruefen, ob Secrets ueberhaupt im Repo liegen (`.env`, Keys, Tokens, Zertifikate, Credential-Dateien).
2. **Wenn Secrets im Repo liegen**: erst bereinigen/auslagern (z. B. 1Password/Vault), dann Agent laufen lassen.
3. **Agent-Sicht begrenzen**: sensible Pfade ueber `.cursorignore` aus dem Agent-Zugriff nehmen.
4. **Logs vor Nutzung redigieren**: E-Mails, Kundendaten, interne URLs, Session-IDs, Bearer-Tokens entfernen.
5. **Scope begrenzen**: nur noetige Dateien/Folder in den Kontext, nicht pauschal ganze Repos.

## Was du live in Cursor zeigst
1. Kurzer Review-Flow vor Ausführung.
2. **Mini-Debug-Showcase (euer Part-B-Ersatz):** ein unklarer Fehler wird erst analysiert, dann gefixt.
   - Nutze dafuer am besten denselben Component-Case aus Section 03 (Kontinuitaet statt neuer Kontext).
3. **Workspace Trust kurz zeigen**: Normal vs Restricted + wann es sinnvoll ist.
4. **Security Preflight live**: kurz zeigen, dass keine kritischen Daten im Projekt liegen bzw. Agent diese nicht sehen kann.
5. **Compliance-Case live**: Komponente sieht korrekt aus, aber nutzt falsche Implementierung (z. B. Inline-Styles statt UnoCSS-Tokens).
6. **Pre-Commit Gate live**: lint + typecheck + tests einmal sichtbar laufen lassen.
7. 20-Sekunden Safety-Checkliste mit den vier Defaults (Commands, Config, MCP, Run-Everything-Verzicht).

## Prompt-/Command-Bausteine
```text
Run a security preflight before any implementation:
1) check whether secrets/credentials are present in repo context
2) list paths that should be hidden from agent access
3) state approval-gated actions (terminal/config/MCP)
4) provide blast radius + rollback
Stop and wait for approval.
```

```text
Review this component change for implementation compliance, not only visual output.
The UI may look correct, but verify code-level standards:
1) token usage (UnoCSS/design tokens vs inline styles)
2) adherence to project rules/components guidelines
3) maintainability risks and required fixes
Return:
- pass/fail per check
- exact file references
- minimal remediation steps
Do not implement fixes before approval.
```

```bash
git status
git diff --stat
npm run lint
npm run typecheck
npm test
```

## Was die Audience nach Section 06 verstanden haben soll
- Agent-Speed ist nur wertvoll mit klaren Stop- und Review-Punkten.
- Debug ist Teil von Safety: Evidenz vor Aktion.
- Security-Defaults sind Produktverhalten, nicht Team-Optionen zum Wegdiskutieren.
- "Sieht richtig aus" reicht nicht: erst Qualitaets-Gate (lint/typecheck/tests), dann Abnahme.
- Mit dieser Safety-Basis ist ein kontrollierter MCP-Einstieg in Section 07 sinnvoll.

## To-dos (Section 06)
- [ ] Einen Security-Preflight-Check als 1 Slide vorbereiten.
- [ ] Einen Compliance-Beispielfall vorbereiten (UnoCSS-Token vs Inline-Style).
- [ ] Projekt-Qualitaetsgate final festlegen (`lint`, `typecheck`, `tests`).
- [ ] Workspace-Trust-Entscheidung fuer euer Team dokumentieren (wann Normal, wann Restricted).

## Doc-Referenzen (Web)
- [Agent Security](https://cursor.com/docs/agent/security)
- [Terminal Tool](https://cursor.com/docs/agent/tools/terminal)
- [Debug Mode](https://cursor.com/docs/agent/debug-mode)
- [Workspace Trust (VS Code)](https://code.visualstudio.com/docs/editing/workspaces/workspace-trust)
- [Help: Privacy](https://cursor.com/help/security-and-privacy/privacy.md)
- [Enterprise: Privacy and Data Governance](https://cursor.com/docs/enterprise/privacy-and-data-governance.md)
