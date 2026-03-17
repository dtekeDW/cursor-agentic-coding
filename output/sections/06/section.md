# Section 06 - Safety und Governance: schnell, aber kontrolliert

| Feld | Wert |
| --- | --- |
| Section-ID | `06` |
| Owner | `Miguel` |
| Zeit | `5 Min` |
| Status | `ready-for-demo` |
| Kern-Demo | `ja` |

## Navigation
- [Workshop Master](../../Workshop.md)
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
6. Bei groesseren Features immer ein **Architecture-Checkpoint** vor Merge (Schnittstellen, Datenfluss, Error-Handling, Ownership).
7. Kein "rough test only": Verifikation mindestens auf Unit + Integrationsniveau, bei kritischen Flows mit E2E.
8. **Wichtige Defaults aus Cursor Security**:
   - Terminal-Commands brauchen standardmaessig Freigabe.
   - Workspace-Config-Dateien sind zusaetzlich geschuetzt.
   - MCP-Verbindungen brauchen Freigabe; Tool-Calls ebenfalls pro Aufruf.
   - "Run Everything" nicht als Team-Standard verwenden.

## Safety-Gate fuer groessere AI-Features (vor PR/Merge)
1. **Architecture Check**: Passt die Loesung in bestehende Schichten/Boundaries oder fuehrt sie neue Kopplung ein?
2. **Contract Check**: API- und Datenvertraege explizit pruefen (Inputs, Outputs, Fehlerfaelle, Backward Compatibility).
3. **Operational Check**: Logging, Monitoring, Failure-Mode und Rollback fuer den Change klar benennen.
4. **Security/Governance Check**: Sensitive Daten, Berechtigungen, Auditierbarkeit und Compliance-Annahmen dokumentieren.
5. **Test Gate**: erst mergen, wenn Teststufe zum Risiko passt (Unit, Integration, E2E fuer kritische End-to-End-Pfade).

## Verifikationsstufen (risk-based statt "einmal kurz testen")
1. **Unit-Tests** fuer neue Kernlogik und Edge-Cases.
2. **Integrations-Tests** fuer Schnittstellen zwischen Modulen/Services.
3. **E2E-Tests** fuer kritische User-Journeys (Login, Checkout, Provisioning, etc.).
4. **Smoke-Checks nach Merge** fuer produktionsnahe Absicherung.

## Secrets- und Sensitive-Data-Checkliste (vor jedem Run)
1. **Nie ungefiltert teilen**: `.env`, API-Keys, Tokens, private Zertifikate, Credential-Dateien.
2. **Logs vor Nutzung redigieren**: E-Mails, Kundendaten, interne URLs, Session-IDs, Bearer-Tokens.
3. **Scope begrenzen**: nur noetige Dateien/Folder in den Kontext, nicht pauschal ganze Repos.
4. **Schutz nutzen**: sensible Pfade ueber `.cursorignore` aus Agent-Zugriff herausnehmen.

## Was du live in Cursor zeigst
1. Kurzer Review-Flow vor Ausführung.
2. **Mini-Debug-Showcase (euer Part-B-Ersatz):** ein unklarer Fehler wird erst analysiert, dann gefixt.
   - Nutze dafuer am besten denselben Component-Case aus Section 03 (Kontinuitaet statt neuer Kontext).
3. **Safety-Gate live anwenden**: fuer einen groesseren Feature-Change die 5 Gate-Punkte einmal sichtbar abhaken.
4. **Test-Plan live erzwingen**: Agent muss Unit/Integration/E2E-Vorschlag mit Priorisierung liefern, bevor Code als "fertig" gilt.
5. Welche Frage man dem Agent zwingend stellt, bevor man „go“ sagt.
6. 30-Sekunden Safety-Checkliste mit den vier Defaults (Commands, Config, MCP, Run-Everything-Verzicht).

## Prompt-/Command-Bausteine
```text
Before executing, provide:
- confidence level
- blast radius
- rollback approach
- what must be reviewed first
- whether any approval-gated actions are needed (terminal/config/MCP)
```

```text
Before any analysis, redact sensitive data from the provided logs/files:
- .env values, keys, tokens, credentials
- personal/customer identifiers
- internal-only endpoints
Return the redacted version first, then wait for approval.
```

```text
Use Debug mode first. No edits.
Give me 3 root-cause hypotheses, how to validate each quickly, and the safest fix order.
Wait for approval before making changes.
```

```text
For this larger feature, run a safety gate before implementation:
1) architecture risks
2) contract/backward-compatibility risks
3) security/governance risks
4) rollback plan
5) required test strategy (unit/integration/e2e)
Return as a checklist with pass/fail and open risks.
```

```text
Propose a risk-based verification plan:
- must-have unit tests
- must-have integration tests
- critical-path e2e tests
- what can be deferred and why
Do not mark the feature done before this plan is approved.
```

```text
Debug this specific component issue from our Section-03 case.
First isolate root cause with evidence, then propose the smallest safe fix.
Do not implement before approval.
```

```bash
git status
git diff --stat
```

## Was die Audience nach Section 06 verstanden haben soll
- Agent-Speed ist nur wertvoll mit klaren Stop- und Review-Punkten.
- Debug ist Teil von Safety: Evidenz vor Aktion.
- Bei groesseren AI-Features ist ein Architecture- und Test-Gate Pflicht, nicht Optional.
- Security-Defaults sind Produktverhalten, nicht Team-Optionen zum Wegdiskutieren.
- Mit dieser Safety-Basis ist ein kontrollierter MCP-Einstieg in Section 07 sinnvoll.

## To-dos (Section 06)
- [ ] Safety-Gate-Checkliste als 1 Slide vorbereiten (Architecture, Contract, Operational, Security, Test).
- [ ] Einen "groesseres Feature"-Beispielfall aus eurem Projekt festlegen, an dem ihr das Gate live zeigt.
- [ ] Test-Gate-Minimum definieren: welche Unit-, Integrations- und E2E-Checks fuer euren Fall Pflicht sind.
- [ ] 1 Standardsatz fuer die Moderation vorbereiten: "Kein Merge ohne Risk-Review + risikobasierten Testplan."

## Doc-Referenzen (Web)
- [Agent Security](https://cursor.com/docs/agent/security)
- [Terminal Tool](https://cursor.com/docs/agent/tools/terminal)
- [Debug Mode](https://cursor.com/docs/agent/debug-mode)
- [Help: Privacy](https://cursor.com/help/security-and-privacy/privacy.md)
- [Enterprise: Privacy and Data Governance](https://cursor.com/docs/enterprise/privacy-and-data-governance.md)
