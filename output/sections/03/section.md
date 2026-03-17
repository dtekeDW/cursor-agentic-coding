# Section 03 - Plan-First: Von Idee zu sauberem Umsetzungsplan

| Feld | Wert |
| --- | --- |
| Section-ID | `03` |
| Owner | `Miguel` |
| Zeit | `7 Min` |
| Status | `ready-for-demo` |
| Kern-Demo | `ja` |

## Navigation
- [Workshop Master](../../Workshop.md)
- [Prev: Section 02](../02/section.md)
- [Next: Section 04](../04/section.md)

## Ziel dieser Section
- Section 03 zeigt praktisch, wie aus einer Anforderung ein sauberer Plan mit kleinen Phasen entsteht.
- Diese Section ist der bewusste Execution-Teil nach der Mode-Entscheidung aus Section 02.

## Beispielprojekt für diese Section
- **Repository:** `ms_frontend` (Nuxt + Storybook + `packages/ui`).
- **Guard Rails:** kurz `.cursor/rules` und ggf. 1 Skill zeigen.
- **Hinweis:** Debug-Showcase wurde aus Timebox-Gründen nach Section 06 verschoben.

## Was du konkret erklärst
1. Plan-First bedeutet: keine Umsetzung ohne Optionen und Freigabe.
2. Jede Option braucht: betroffene Dateien, Risiko, Validation-Check.
3. Eine gute Entscheidung ist klein, risikoarm und schnell prüfbar.
4. Ergebnis ist ein freigegebener 3-Phasen-Plan statt einer langen Wunschliste.

## Was du live in Cursor zeigst (Kern-Demo)
1. **Beispielrepo öffnen:** ms_frontend öffnen; kurz README und `.cursor/rules` (ggf. eine Skill) zeigen, damit die Guard Rails sichtbar sind.
2. **Demo-Aufgabe:** optionalen sekundären CTA auf der Featured Reservation Card ergänzen.
3. Ask-Mode: 2-3 Optionen erzeugen, 1 Option auswählen.
4. Plan-Mode: gewählte Option in 3 Phasen brechen.
5. Agent-Mode: genau **eine** freigegebene Phase umsetzen, danach Diff + kurzer Check.
6. Übergang: „Debug-Vorgehen vertiefen wir in Section 06.“

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

## Was die Audience nach Section 03 verstanden haben soll
- Gute Agent-Arbeit beginnt mit Optionen, Entscheidung und kleinem Plan.
- Plan-First reduziert Rework, weil Scope, Risiko und Checks vorab klar sind.

## Doc-Referenzen (Web)
- [Plan Mode](https://cursor.com/docs/agent/plan-mode)
- [Agent Prompting](https://cursor.com/docs/agent/prompting)
- [Agent Overview](https://cursor.com/docs/agent/overview)
