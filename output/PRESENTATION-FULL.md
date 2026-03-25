# Cursor Agentic Coding — Referenten-Checklisten (alle Sections)

> **Do not edit by hand.** Regenerate after changing any `output/sections/*/presentation.md`.

> Ausführlicher Inhalt + Sprechtext: jeweils `section.md` (Abschnitt **Talk-Referenz**). Generate: `./scripts/build-presentation-full.sh`


---

# Section 01 — Ablauf-Checkliste (Referent:innen)

**Zeit:** 6 Min · **Owner:** Dogan  
**Alles inhaltlich:** [section.md](section.md) · **Folien (Publikum):** [slides.md](slides.md)

**Roter Faden (Dry-Run Dogan):** Begrüßung & Ziel → **VS Code + Cursor** & Shortcuts → **Live-Prompt** → **Modell** (⌘⇧/) → **Auto / Multiple Models** → **Kontextfenster** & Compaction → **Bild & Voice** → **`@`** (Datei, Ordner, Docs, Past Chats) → **Terminal** → **Diff zu `main`** → **Abschluss:** Feature-Recap (**semantische Suche**, **Simple Browser** ⌘⇧P, DOM/DevTools, **Bildgenerierung**) → **Queue** (**Enter**) vs. **Sofort** (**⌘Enter**) → optional **Laufort** → **Übergang Section 02**

## Navigation

- [Workshop Master](../../../Workshop.md)
- Prev: —
- [Next: Section 02](../02/presentation.md)

## Checkliste (in dieser Reihenfolge)

- [ ] **Begrüßung (~45s):** mit Miguel — mehr als Chat, Demos folgen; jetzt **Interface-Basics**
- [ ] **⌘T** neuer Chat; **Cursor = VS Code + Layer**; **⌘E** Agent, **⌘B** Sidebar, **⌘⇧F** Suche
- [ ] **Live:** kurze Nachricht (z. B. *explain like I'm 5*); Fokus auf **UI**, nicht perfekte Antwort
- [ ] **Modellauswahl:** **⌘⇧/**; Vorauswahl; **All Models**; API-Keys; **Auto**; **Use Multiple Models**; **Max** nur wenn relevant / sonst skip
- [ ] **Kontextfenster:** Token-Idee; **% used**; bei Füllstand → committen / neue Session; **Compaction** kurz erklären
- [ ] **Bild & Voice** (je ein Satz)
- [ ] **`@`:** Datei, Ordner, Docs (+), Past Chats — *Details Section 03*; [Context.png](../../../input/sections/01/Context.png)
- [ ] **Terminal:** `@Terminal` / Logs mitgeben
- [ ] **Diff zu `main`:** per **Prompt**; MR-Beschreibung; kein `@Git`-Menü
- [ ] **Abschluss (~60–90s, ggf. straffen):** **Semantische Suche**; **⌘⇧P** → *Simple Browser* → URL; **DOM/Struktur** + **DevTools** ins Chat; **Bildgenerierung** Stichwort; Abgrenzung **Agent-Browser-Tool**
- [ ] **Queue vs. Sofort:** **Enter** = wartende Liste / nacheinander; **⌘Enter** = sofort, Kurz-Abbruch wenn nötig — Beispiele: Test-Matrix **queue**en; falsches Package → **⌘Enter**
- [ ] **Optional:** Local / Worktree / Cloud (ein Satz)
- [ ] **Übergang:** Section 02 — Modi

## Notfall

- Modell + Kontextfenster + `@` + Diff zu `main`; Abschluss nur **Enter vs. ⌘Enter** + ein Feature-Stichwort; VS Code-Zeile weglassen.

---

# Section 02 — Ablauf-Checkliste (Referent:innen)

**Zeit:** 6 Min · **Owner:** Dogan  
**Inhalt + Sprechtext:** [section.md](section.md) · **Folien:** [slides.md](slides.md)

## Navigation

- [Workshop Master](../../../Workshop.md)
- [Prev: Section 01](../01/presentation.md)
- [Next: Section 03](../03/presentation.md)

## Checkliste

- [ ] **Hook:** Vier Modi — lesen vs. schreiben, Plan vs. direkt bauen, Evidenz (Debug); heute nur Raster
- [ ] **Tabelle** „Welcher Modus wann?“ + Faustregel
- [ ] **Ein Satz pro Modus** (optional GIFs — Links in [section.md](section.md))
- [ ] **1–2 Szenarien** (Audience rät)
- [ ] **Mode-Picker** + **Shift+Tab**
- [ ] **`@`** kurz erwähnen → Details Section 03
- [ ] **Übergang:** Section 03 Rules/Context; Section 04 voller Flow

## Notfall

- Kein Live-Moduswechsel: Tabelle + GIFs aus Repo zeigen.

---

# Section 03 — Ablauf-Checkliste (Referent:innen)

**Zeit:** 6 Min · **Owner:** Miguel  
**Inhalt + Sprechtext:** [section.md](section.md) · **Folien:** [slides.md](slides.md)

## Navigation

- [Workshop Master](../../../Workshop.md)
- [Prev: Section 02](../02/presentation.md)
- [Next: Section 04](../04/presentation.md)

## Checkliste

- [ ] **Hook:** Kontext + Rules + Indexing; Prompting als Schalter
- [ ] **~60s** Rules-UI + Screenshot rules (siehe [section.md](section.md))
- [ ] **Rule-Typen** + Hierarchie (schnell)
- [ ] **A/B-Chat** gleicher Prompt: ohne vs. mit `@` + Rules (Kern!)
- [ ] **Indexing** ein Satz
- [ ] **Takeaway** zur Audience
- [ ] **Übergang** Section 04 Plan-First

## Notfall

- Kein A/B live: zwei Screenshots/Outputs vorbereiten und vergleichen.

---

# Section 04 — Ablauf-Checkliste (Referent:innen)

**Zeit:** 7 Min · **Owner:** Miguel · **Kern-Demo:** ja  
**Inhalt + Prompts:** [section.md](section.md) · **Folien:** [slides.md](slides.md)

## Navigation

- [Workshop Master](../../../Workshop.md)
- [Prev: Section 03](../03/presentation.md)
- [Next: Section 05](../05/presentation.md)

## Checkliste

- [ ] **Hook:** Optionen → Entscheidung → kleiner Plan vor großem Diff
- [ ] Repo **ms_frontend** (o. ä.) + `.cursor/rules` zeigen
- [ ] **Ask:** 3 Optionen, **eine** wählen (Prompts in [section.md](section.md))
- [ ] **Plan:** 3 Phasen, **freigeben**
- [ ] Optional **Subagent** erwähnen
- [ ] **Agent:** **nur Phase 1** → Diff + Check
- [ ] **Übergang** Section 05 Skills

## Notfall

- Vorgefertigten Plan zeigen (Plan B in [section.md](section.md)).

---

# Section 05 — Ablauf-Checkliste (Referent:innen)

**Zeit:** 8 Min · **Owner:** Dogan & Miguel · **Kern-Demo:** ja  
**Inhalt + Sprechtext:** [section.md](section.md) · **Folien:** [slides.md](slides.md)

## Navigation

- [Workshop Master](../../../Workshop.md)
- [Prev: Section 04](../04/presentation.md)
- [Next: Section 06](../06/presentation.md)

## Checkliste

- [ ] **Hook:** Skills = Team-Gedächtnis; heute Doku + Jira + Changeset
- [ ] **~2min** Konzept ([cursor.com/docs/skills](https://cursor.com/docs/skills)) — Tabellen in [section.md](section.md)
- [ ] **~2min** **Jira** SKILL + Script-Pfad; optional Live-Prompt
- [ ] **~2.5min** **Changeset** SKILL; optional Live auf Branch
- [ ] **~1min** Invocation: Auto vs. `/` · `disable-model-invocation`
- [ ] **Übergang** Section 06 MCP

## Notfall

- Plan B in [section.md](section.md) — nur SKILL.md durchgehen oder einen Skill live.

---

# Section 06 — Ablauf-Checkliste (Referent:innen)

**Zeit:** 4 Min · **Owner:** Dogan · **Kern-Demo:** ja  
**Inhalt + Runbooks:** [section.md](section.md) · **Folien:** [slides.md](slides.md)

## Navigation

- [Workshop Master](../../../Workshop.md)
- [Prev: Section 05](../05/presentation.md)
- [Next: Section 07](../07/presentation.md)

## Checkliste

- [ ] **Hook:** MCP = externe Tools + Approval (kurz)
- [ ] **Demo 1:** [01-chrome-devtools-mcp-demo.md](../../../input/sections/06/01-chrome-devtools-mcp-demo.md) — Chronologie abarbeiten, Prompt, **eine** Variante (A11y oder INP)
- [ ] Tool **freigeben**, Output zeigen
- [ ] **Demo 2:** [02-figma-mcp-demo.md](../../../input/sections/06/02-figma-mcp-demo.md)
- [ ] **Sicherheit** ein Satz
- [ ] **Übergang** Section 07

## Notfall

- Nur Runbook vorlesen + ein fertiges Tool-Output zeigen.

---

# Section 07 — Ablauf-Checkliste (Referent:innen)

**Zeit:** 4 Min · **Owner:** Dogan & Miguel  
**Inhalt + Sprechtext:** [section.md](section.md) · **Folien:** [slides.md](slides.md)

## Navigation

- [Workshop Master](../../../Workshop.md)
- [Prev: Section 06](../06/presentation.md)
- Next: —

## Checkliste

- [ ] **Hook:** Aus Inspiration → kleine Team-Schritte
- [ ] **Open Round:** „Was wollt ihr ab morgen anders machen?“
- [ ] **3 Punkte** First-Week Adoption (klein, messbar)
- [ ] **Starter Pack:** Rules + AGENTS.md + 1 Skill-Idee
- [ ] **Governance** ein Satz (Planning vs. Subagent/Cloud)
- [ ] **Q&A** / next step pro Team + Dank + Hinweis auf Materialien ([section.md](section.md) / [slides.md](slides.md))

## Notfall

- Nur Folien Section 07 + Diskussion; keine Live-Ordner nötig.
