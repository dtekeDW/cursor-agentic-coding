# Section 07 — Abschluss, Adoption und Q&A

**Vollständige Section-Referenz** (Inhalt + Sprechtext).  
**Kurz am Pult:** [presentation.md](presentation.md) · **Folien:** [slides.md](slides.md)

| Feld | Wert |
| --- | --- |
| Section-ID | `07` |
| Owner | `Dogan & Miguel` |
| Zeit | `4 Min` |
| Status | `ready-for-content` |
| Kern-Demo | `nein` |

## Navigation

- [Ablauf-Checkliste (Referent:innen)](presentation.md)
- [Folien (Audience)](slides.md)
- [Workshop Master](../../../Workshop.md)
- [Prev: Section 06](../06/section.md)
- Next: `-`

## Ziel dieser Section

- Section 07 schließt den Talk ab und übersetzt den Inhalt in konkrete nächste Team-Schritte.
- Abschlussstil: offene Runde + Adoption-Handover.

## Was du konkret erklärst

1. Offene Runde: was war nützlich, was fehlt im eigenen Teamkontext noch?
2. Welche 2-3 Workflows jedes Projekt sofort starten kann.
3. Starter-Guidelines je Projekt: `.cursor/rules`, `AGENTS.md`, optional Team Rules.
4. Wann Planning reicht und wann Subagent/Background/Cloud sinnvoll ist.

## Was du live in Cursor zeigst

1. **Open-Round Startfrage**: "Was wollt ihr ab morgen mit Cursor anders machen?"
2. **First-Week Adoption-Liste** in 3 Punkten.
3. **Project Starter Pack** in 3 Artefakten:
   - `.cursor/rules` für framework-spezifische Standards,
   - `AGENTS.md` für einfachen Einstieg,
   - 1 wiederholbarer Skill für Routineaufgaben.
4. Q&A-Übergabe mit klarer "next step per team".

## Prompt-/Command-Bausteine

```text
Create a 7-day adoption plan for a dev team starting with Cursor agentic workflows.
Keep it to 5 actionable bullets.
```

```text
List two workflows to start now and one workflow to postpone.
Explain why.
```

```text
Create a starter setup for this project:
1) one .cursor/rules file idea
2) one AGENTS.md starter instruction
3) one repetitive task that should become a skill
```

## Was die Audience nach Section 07 verstanden haben soll

- Nächste Schritte sind klar und klein genug, um direkt zu starten.
- Das Team hat einen klaren Startpunkt pro Projekt statt nur allgemeiner Tipps.

## Doc-Referenzen (Web)

- [Rules](https://cursor.com/docs/rules)
- [Skills](https://cursor.com/docs/skills)
- [Subagents](https://cursor.com/docs/subagents)
- [Agent Security](https://cursor.com/docs/agent/security)
- [Teams Setup](https://cursor.com/docs/account/teams/setup)

---

## Talk-Referenz (Sprechtext & Tiefe)

### Einstieg (~30s)

Modi, Kontext, Plan-First, Skills, MCP — jetzt in **kleine, machbare** Schritte übersetzen. Offene Runde + **Starter-Pack**, das nicht überfordert.

### Abschluss (~30s)

Drei Artefakte zum Start: **`.cursor/rules`**, **`AGENTS.md`**, **ein Skill-Kandidat**. Rest skaliert später (Subagents, Background, Cloud nach Policy).

### Beat-Folge (Referenz)

| Beat | Was du sagst | Was du zeigst |
| --- | --- | --- |
| 1 | Open Round | optional Stichworte sammeln |
| 2 | First-Week Adoption (3 Punkte) | Folie / mündlich |
| 3 | Starter Pack | ggf. Ordner/Datei im Editor |
| 4 | Governance ein Satz | — |
| 5 | Q&A / next step pro Team | Zeitbox |

### Live-Demo Schritt für Schritt (leicht)

1. Open-Round-Frage; 1–2 Antworten spiegeln.
2. Kein neues Feature — höchstens `.cursor/rules` oder Beispiel-`AGENTS.md` öffnen.
3. „Wer macht was bis …?“ — Mini-Verpflichtung.

### FAQ (wenn sie fragen)

| Frage | Kurzantwort |
| --- | --- |
| Team vs. Repo Rules? | Team zentral; Project im Repo — Hierarchie Section 03. |
| Wann Skills? | Wiederkehrender Ablauf + festes Output-Format. |
| MCP-Sicherheit? | Vertrauenswürdige Quellen; minimal Keys; [Agent Security](https://cursor.com/docs/agent/security). |

### Abschluss für die Audience

Materialien: **Referenz** `section.md` pro Topic, **Checklisten** `presentation.md`, **Folien** `slides.md`; gebündelt `PRESENTATION-FULL.md` / `SLIDES-FULL.md`.

## To-dos (Section 07)

- [ ] Je Projekt 1 Starter-Rule definieren (z. B. React/Vue/Astro Coding Conventions).
- [ ] AGENTS.md-Startvorlage mit 5-8 klaren Team-Instruktionen vorbereiten.
- [ ] Eine repetitive Team-Aufgabe als ersten Skill-Kandidaten auswählen.
- [ ] Entscheiden, wann Subagent/Background/Cloud im Team erlaubt und sinnvoll ist.
