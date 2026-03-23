# Section 04 — Plan-First: Von Idee zu sauberem Umsetzungsplan

**Vollständige Section-Referenz** (Inhalt + Sprechtext).  
**Kurz am Pult:** [presentation.md](presentation.md) · **Folien:** [slides.md](slides.md)

| Feld | Wert |
| --- | --- |
| Section-ID | `04` |
| Owner | `Miguel` |
| Zeit | `7 Min` |
| Status | `ready-for-demo` |
| Kern-Demo | `ja` |

## Navigation

- [Ablauf-Checkliste (Referent:innen)](presentation.md)
- [Folien (Audience)](slides.md)
- [Workshop Master](../../../Workshop.md)
- [Prev: Section 03](../03/section.md)
- [Next: Section 05](../05/section.md)

## Ziel dieser Section

- Section 04 zeigt praktisch, wie aus einer Anforderung ein sauberer Plan mit kleinen Phasen entsteht.
- Diese Section baut auf den Rules und Context-Grundlagen aus Section 03 auf.

## Beispielprojekt für diese Section

- **Repository:** `ms_frontend` (Nuxt + Storybook + `packages/ui`).
- **Guard Rails:** kurz `.cursor/rules` und ggf. 1 Skill zeigen.

## Was du konkret erklärst

1. Plan-First bedeutet: keine Umsetzung ohne Optionen und Freigabe.
2. Jede Option braucht: betroffene Dateien, Risiko, Validation-Check.
3. Eine gute Entscheidung ist klein, risikoarm und schnell prüfbar.
4. Ergebnis ist ein freigegebener 3-Phasen-Plan statt einer langen Wunschliste.
5. **Subagent-Delegation im Plan**: Bei größeren Aufgaben (z. B. Frontend + Backend) können einzelne Todos an Subagents delegiert werden — jeder mit eigenem Context-Window für fokussierte Arbeit.

## Was du live in Cursor zeigst (Kern-Demo)

1. **Beispielrepo öffnen:** ms_frontend öffnen; kurz README und `.cursor/rules` (ggf. eine Skill) zeigen, damit die Guard Rails sichtbar sind.
2. **Demo-Aufgabe:** optionalen sekundären CTA auf der Featured Reservation Card ergänzen.
3. Ask-Mode: 2-3 Optionen erzeugen, 1 Option auswählen.
4. Plan-Mode: gewählte Option in 3 Phasen brechen.
5. **Optional Subagent zeigen:** Kurz erwähnen, dass man bei komplexeren Tasks einzelne Todos an einen Subagent delegieren kann (z. B. "Frontend-Agent kümmert sich um UI, Backend-Agent um API").
6. Agent-Mode: genau **eine** freigegebene Phase umsetzen, danach Diff + kurzer Check.
7. Übergang: „Skills als wiederverwendbare Bausteine vertiefen wir in Section 05."

## Praktische Demo-Beispiele (falls Aufgabe wechseln soll)

1. Einen kleinen API-Response-Text erweitern (ohne Architekturumbau).
2. Einen optionalen UI-Prop mit Storybook-Variante ergänzen.
3. Eine bestehende Validierungsregel minimal erweitern und Ergebnis prüfen.

## Prompt-/Command-Bausteine (zum Vorlesen oder Kopieren)

**Demo-Kontext**
```text
Example repo: <path-to-ms_frontend>
Task: Add an optional secondary CTA to the featured ReservationCard (e.g. "Modify booking" link) shown when a new optional prop is set.
```

**Ask-Mode**
```text
We're in the ms_frontend repo (Nuxt + Storybook + packages/ui with tokens). Use Ask mode only — no edits.

Task: Add an optional secondary CTA to the featured ReservationCard (e.g. "Modify booking" link) shown when a new optional prop is set.

Give me 3 implementation options. For each: files/components affected, risk level, easiest validation check.
Recommend one option and wait for approval.
```

**Plan-Mode**
```text
Switch to Plan mode. We're in the ms_frontend repo; follow .cursor rules and existing patterns.

Break the approved option into 3 small phases. For each phase: goal, file(s) to change, success criteria, rollback note. No code — plan only.
```

**Plan-Mode mit Subagent-Delegation (optional)**
```text
This task spans frontend and backend. Create a plan with clear phases.
For the frontend work, delegate to a subagent focused on UI components.
For the backend work, delegate to a separate subagent focused on API changes.
Each subagent works with its own context, then we merge results.
```

**Implementierung**
```text
Switch to Agent mode. Implement only Phase 1.
After implementation, stop and show:
- changed files
- short diff summary
- validation result
```

## Plan B (wenn Live-Output schwach ist)

- Vorgefertigten Beispiel-Plan zeigen und gemeinsam gegenprüfen.

## Was die Audience nach Section 04 verstanden haben soll

- Gute Agent-Arbeit beginnt mit Optionen, Entscheidung und kleinem Plan.
- Plan-First reduziert Rework, weil Scope, Risiko und Checks vorab klar sind.
- Subagents ermöglichen parallele Arbeit an größeren Aufgaben mit isoliertem Context.

## Doc-Referenzen (Web)

- [Plan Mode](https://cursor.com/docs/agent/plan-mode)
- [Agent Prompting](https://cursor.com/docs/agent/prompting)
- [Agent Overview](https://cursor.com/docs/agent/overview)

---

## Talk-Referenz (Sprechtext & Tiefe)

### Einstieg (~30s)

Gute Agent-Arbeit beginnt nicht mit dem ersten Edit — sie beginnt mit **Optionen**, einer **Entscheidung** und einem **kleinen Plan**. Plan-First heißt: Phasen, Risiko und Checks **bevor** der Agent quer durch das Repo schreibt.

### Abschluss (~30s)

**Ask** → Optionen, **Plan** → Struktur + Freigabe, **Agent** → **eine** Phase. Subagents optional im Plan für parallele Stränge.

### Beat-Folge (Referenz)

| Beat | Was du sagst | Was du zeigst |
| --- | --- | --- |
| 1 | Repo + Guard Rails | README, `.cursor/rules` |
| 2 | Demo-Aufgabe (Reservation Card o. ä.) | Komponente |
| 3 | **Ask** — 3 Optionen, eine wählen | Chat |
| 4 | **Plan** — 3 Phasen | Plan-UI |
| 5 | Optional **Subagents** | Plan-Text |
| 6 | **Agent** — nur Phase 1 | Diff |
| 7 | Plan B | Backup-Plan |

### Live-Demo Schritt für Schritt

1. Repo öffnen; Guard Rails zeigen.
2. **Ask:** Demo-Kontext + Aufgabe — Option wählen.
3. **Plan:** Phasen — **freigeben**.
4. Optional Subagent erwähnen.
5. **Agent:** nur Phase 1 — Diff + Validation.
6. „Skills in Section 05.“

### FAQ (wenn sie fragen)

| Frage | Kurzantwort |
| --- | --- |
| Warum nicht alles auf einmal? | Scope-Creep, schwerer Rollback — kleine Phasen. |
| Wann Subagents? | Parallel + klar trennbar (UI vs. API) — nicht für Kleinigkeiten. |

### Übergang zu Section 05

„**Skills** — wiederholbare Team-Routinen, inkl. **Jira**- und **Changeset**-Demos.“
