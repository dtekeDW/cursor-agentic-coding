# Section 03 - Plan-First: Von Idee zu sauberem Umsetzungsplan

| Feld | Wert |
| --- | --- |
| Section-ID | `03` |
| Owner | `Miguel` |
| Zeit | `8 Min` |
| Status | `ready-for-demo` |
| Kern-Demo | `ja` |

## Navigation
- [Workshop Master](../../Workshop.md)
- [Prev: Section 02](../02/section.md)
- [Next: Section 04](../04/section.md)

## Ziel dieser Section
- Section 03 zeigt praktisch, wie aus einer Anforderung ein sauberer Plan mit kleinen Phasen entsteht.

## Beispielprojekt für diese Section
- Wir brauchen ein **klares Beispielprojekt**, damit Plan-Mode (und Debug-Mode) echte Struktur und Guard Rails haben.
- **Repository:** `ms_frontend` (Motel One Frontend Mono-Repo), z. B. unter  
  `<path>/MotelOne/docker/projects/ms_frontend`  
  (Presenter: an euren Clone- bzw. Workspace-Pfad anpassen.)
- **Kontext für den Agent:** README (Mono-Repo: Nuxt-Apps, Storybook, Packages), sowie **`.cursor/`**:
  - **Rules:** z. B. `general-rules.mdc` (Vue/Nuxt/TS/UnoCSS, Plan-then-Code, A11y), `documentation-style.mdc` (TSDoc, Interfaces).
  - **Skills:** z. B. JIRA-Ticket-Planung (plan-only, JIRA + Figma + Codebase), Write-Changeset-Description.
- **Stack:** Nuxt-Apps, Storybook (`apps/storybook`), Vue 3, Design Tokens, `packages/ui` mit `.docs.md` und `.stories.ts` pro Komponente.
- Die JIRA-Planning-Skill im Repo ist ein Beispiel für einen reinen Plan-Workflow (kein Code).

## TEIL A - ASK/PLAN/IMPLEMENTIERUNG

### Was du konkret erklärst
1. Plan-First bedeutet: keine Änderung ohne vorherige Optionen.
2. Jede Option braucht: betroffene Dateien, Risiken, Testidee.
3. Entscheidungskriterien: kleinster Scope, geringstes Risiko, schnell validierbar.
4. Ergebnis ist ein freigegebener Mini-Plan statt langer Wunschliste.

### Was du live in Cursor zeigst (Kern-Demo)
1. **Beispielrepo öffnen:** ms_frontend öffnen; kurz README und `.cursor/rules` (ggf. eine Skill) zeigen, damit die Guard Rails sichtbar sind.
2. **Demo-Aufgabe verwenden:** Option A — *„Optionalen sekundären CTA zur Featured Reservation Card hinzufügen (z. B. ‚Buchung ändern‘-Link), der nur angezeigt wird, wenn eine neue optionale Prop gesetzt ist.“*
3. Ask-Mode starten und 2–3 Implementierungsoptionen erzeugen.
4. Optionen laut vergleichen und eine auswählen.
5. Plan-Mode: gewählte Option in 3 Phasen brechen.
6. Umsetzung: genau **eine** freigegebene Phase im Agent-Mode laufen lassen, danach Diff + kurzer Check.

### Prompt-/Command-Bausteine (Teil A)

**Demo-Kontext (z. B. zuerst nennen oder in den Chat kopieren):**
```text
Example repo: <path-to-ms_frontend>
Task: Add an optional secondary CTA to the featured ReservationCard (e.g. "Modify booking" link) shown when a new optional prop is set.
```

**Ask-Mode (keine Edits):**
```text
We're in the ms_frontend repo (Nuxt + Storybook + packages/ui with tokens). Use Ask mode only — no edits.

Task: Add an optional secondary CTA to the featured ReservationCard (e.g. "Modify booking" link) shown when a new optional prop is set.

Give me 3 implementation options. For each: files/components affected, risk level, easiest validation check. Recommend one option and wait for approval.
```

**Plan-Mode (nach Freigabe der Option):**
```text
Switch to Plan mode. We're in the ms_frontend repo; follow .cursor rules and existing patterns.

Break the approved option into 3 small phases. For each phase: goal, file(s) to change, success criteria, rollback note. No code — plan only.
```

**Implementierung (nach Plan-Freigabe):**
```text
Switch to Agent mode. Implement only Phase 1.
After implementation, stop and show:
- changed files
- short diff summary
- validation result
```

## TEIL B - DEBUG-MODE (2 SHOWCASES)

### Was du live in Cursor zeigst (Debug-Track)
1. **Showcase 1 - Styling-Bug (UnoCSS/Template):**
   - Fehlerbild: Der neue CTA ist funktional da, aber visuell "kaputt" (Spacing/Farbe/States wirken falsch oder gar nicht).
   - Typischer Ausloeser: vertippte Utility-Klasse oder falsch zusammengesetzte Klassen im Template.
   - Warum gut fuer Debug: sehr haeufig im Alltag, schnell reproduzierbar, klarer Vorher/Nachher-Effekt in Storybook.
2. **Showcase 2 - Logik-Bug (Conditional Rendering):**
   - Fehlerbild: CTA wird nie angezeigt oder erscheint im falschen Zustand.
   - Typischer Ausloeser: falsche `v-if`-Bedingung, Prop-Name-Mismatch oder unvollstaendiger Story-Args-State.
   - Warum gut fuer Debug: zeigt, dass Debug nicht nur "Styling", sondern auch Daten-/State-Analyse ist.
3. **Empfehlung fuer die Live-Reihenfolge:**
   - Erst Showcase 1 (schneller visueller Erfolg in 60-90 Sekunden),
   - dann Showcase 2 (2-3 Minuten mit Hypothesen, Check und gezieltem Fix).

### Prompt-/Command-Bausteine (Teil B / Debug)

**Debug-Mode (schneller Einstieg):**
```text
Use Debug mode first. No edits.
For the task below, give me:
- 2 root-cause/risk hypotheses
- minimal instrumentation or checks to validate each
- what could break if implemented naively

Task: Add an optional secondary CTA to the featured ReservationCard (e.g. "Modify booking" link) shown when a new optional prop is set.
```

**Debug-Mode Prompt - Showcase 1 (UnoCSS/Template):**
```text
Use Debug mode. No edits yet.
Problem: In Storybook, the new CTA is visible but styling looks broken/inconsistent.
Please:
1) give 3 likely root causes in template/UnoCSS usage
2) list exact files to inspect first
3) propose the smallest validation check for each hypothesis
Then recommend one fix path.
```

**Debug-Mode Prompt - Showcase 2 (Conditional Rendering):**
```text
Use Debug mode. No edits yet.
Problem: CTA is not shown in the expected story state.
Please:
1) give 3 hypotheses (v-if logic, prop mapping, story args/state)
2) define how to validate each quickly
3) identify the most likely root cause and safest fix order
Then wait for approval.
```

### Fallback fuer Teil A (Planning/Implementierung)
- Vorgefertigten Beispiel-Plan zeigen und gemeinsam gegenprüfen.
- **Vorgefertigter 3-Phasen-Plan** (Demo-Aufgabe: optionaler sekundärer CTA auf der Featured Reservation Card):

| Phase | Ziel | Datei(en) | Check | Rollback |
| --- | --- | --- | --- | --- |
| 1 | Typen/Model erweitern: optionale Prop für sekundären CTA (z. B. `modifyBookingLink?: Link`) auf der Featured Card. | `ReservationCard.model.ts`, ggf. `reservation-card-with-image/ReservationCardWithImage.model.ts` | Types bauen ohne Fehler; bestehende Stories unverändert. | Prop und Typen entfernen. |
| 2 | UI umsetzen: Link/CTA in `ReservationCardWithImage` anzeigen, wenn Prop gesetzt; ggf. Parent durchreichen. | `ReservationCardWithImage.vue`, ggf. `ReservationCard.vue` | Storybook: Story mit neuer Prop zeigt CTA; ohne Prop unverändert. | Änderungen in .vue zurücknehmen. |
| 3 | Docs + Stories: Nutzung dokumentieren, neue Story oder Args für „Mit Modify-Booking-Link“. | `ReservationCard.docs.md`, `ReservationCard.stories.ts` | Docs lesbar; Storybook läuft; a11y-Check grün. | Docs/Stories-Änderungen verwerfen. |

## Was die Audience nach Section 03 verstanden haben soll
- Gute Agent-Arbeit beginnt mit Optionen und Entscheidung, nicht mit blindem Ausführen.

## Doc-Referenzen (Web)
- [Plan Mode (DE)](https://cursor.com/de/docs/agent/plan-mode)
- [Prompting (DE)](https://cursor.com/de/docs/agent/prompting)
- [Plan Mode](https://cursor.com/docs/agent/plan-mode.md)
- [Agent Prompting](https://cursor.com/docs/agent/prompting.md)
- [Help: Plan Mode](https://cursor.com/help/ai-features/plan-mode.md)
- [Agent Overview](https://cursor.com/docs/agent/overview.md)
