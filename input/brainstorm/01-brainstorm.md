# Brainstorm Summary (konsolidiert)

## Zielgruppe und Ziel

- Zielgruppe: Entwickler:innen, die heute primär Chat-Prompting nutzen.
- Ziel: Cursor als verlässlichen agentischen Workflow zeigen (nicht nur „Prompting-Tricks“).
- Fokus: `Cursor IDE` und praktische Team-Adoption.

## Scope (was drin / was nicht)

- In Scope:
  - Agent-Basics, Modes, Kontext, Rules, Skills, Commands, Safety, End-to-End Loop.
  - Praktische Beispiele mit kleinem Risiko und klaren Checks.
- Out of Scope:
  - Tiefe MCP-Entwicklung (kein eigener MCP-Bau im Talk).
  - Zu tiefe Tool-Vergleiche mit vielen Konkurrenzprodukten.

## Kerninhalte nach Workshop-Sections

### Section 01 - Einstieg und Agent-Basics

- Was ist Cursor Agent und wie arbeitet er?
- UI-Orientierung: Model Selection, Context Window, Local/Worktree/Cloud.
- Queue vs Immediate Messages, Checkpoints als Safety-Netz.

### Section 02 - Modes richtig einsetzen

- `Ask`, `Plan`, `Agent`, `Debug` klar unterscheiden.
- Wann welcher Modus sinnvoll ist.
- Heuristik: erst verstehen/planen, dann umsetzen.

### Section 03 - Plan-First in der Praxis

- Von Anforderung zu freigegebenem 3-Phasen-Plan.
- Ask -> Plan -> 1 Implementierungsschritt.
- Kleine, reviewbare Schritte statt großer Einmal-Änderungen.

### Section 04 - Kontext, Rules, Indexing

- Woher kommt Kontext? (`@` Mentions, Dateien/Ordner, Indexing).
- Warum fokussierter Kontext bessere Ergebnisse liefert.
- Rules als Team-Guardrail statt Ad-hoc-Wissen.

### Section 05 - Skills, Commands, Subagents

- Skills als wiederverwendbare Team-Muster.
- Commands für wiederkehrende Routinen (z. B. Diff/Checks/Docs).
- Subagents für Arbeitsteilung (z. B. Frontend/Backend).

### Section 06 - Safety, Sandbox, Review

- Review vor Ausführung, Blast Radius, Rollback.
- Debug als sichere Methode: Hypothesen -> Evidenz -> gezielter Fix.
- Terminal/Sandbox und Datenschutz-Prinzipien.

### Section 07 - MCP Mini-Case

- Kompletter Loop: Ask -> Plan -> Agent -> Review.
- Ein kleiner, realer Case mit klarem Stop/Go-Entscheidungspunkt.

### Section 08 - Adoption und nächste Schritte

- 7-Tage-Startplan fürs Team.
- Welche Workflows sofort starten, welche später.
- Q&A-Übergabe mit klaren Follow-ups.

## Ergänzende Themen aus den Rohnotizen

- Voice-/Image-Input als unterstützende Eingabekanäle.
- Figma/Browser-Use-Cases nur als kompakte Showcase-Elemente.
- `.cursor`-Ordner als Startpunkt für Projekt-Guidelines.

## Qualitätsprinzipien für den Talk

- Nicht zu tief, dafür klar und reproduzierbar.
- Pro Section ein Kernziel + ein klarer Takeaway.
- Diffs/Checks/Review über „magische“ One-Shot-Demos stellen.