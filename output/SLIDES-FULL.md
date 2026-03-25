---
marp: true
paginate: true
footer: 'Cursor Agentic Coding — Full deck (Sections 01–07)'
---

# Cursor Agentic Coding in Practice

**Handout / Folien** — Sections 01–07 (ohne Referenten-Skript).

> Gebaut mit `./scripts/build-slides-full.sh` — nach Änderungen an `slides.md` neu erzeugen.


---

## Deck Section 01


# Cursor Agentic Coding in Practice

## Section 01 — Einstieg: Chat-Oberfläche & Kontext

**Heute:** mehr als nur Chat — Workflows, Demos — zuerst **Basics:** was ihr im Interface seht und was es bedeutet.

[Vollständige Agenda](../../../Workshop.md)

---

# Section 01 — Reihenfolge (Roter Faden)

1. **VS Code + Cursor** — gleiche Basis, Cursor-Layer & Shortcuts (**⌘T**, **⌘E**, …)
2. **Live-Prompt** — eine Nachricht; Fokus auf **UI** neben der Antwort (Modell, Kontext, Usage)
3. **Modellauswahl** (**⌘⇧/**) — Auto, Multiple Models, API-Keys …
4. **Kontextfenster** — Token-Idee, **% used**, Compaction
5. **Bild & Voice** — Paste/Drop, Spracheingabe
6. **`@`‑Mentions** — Dateien, Ordner, Docs, Past Chats → Details **Section 03**
7. **Terminal** — **`@Terminal`**, Logs mitgeben
8. **Diff zu `main`** — im **Prompt** formulieren (kein `@Git`-Menü)
9. **Kurz: Features** — semantische Suche, **Simple Browser** (**⌘⇧P**), Bildgenerierung
10. **Message Queue** — **Enter** (wartet) vs. **⌘Enter** (sofort)

---

# Cursor ≈ VS Code + Cursor-Layer

- **Gleiche Basis** wie VS Code — dazu Cursor-spezifische Oberfläche (Agent, Modell, …)
- **Shortcuts** wie gewohnt — u. a. **⌘E** Agent ein/aus, **⌘B** Sidebar, **⌘⇧F** Suche
- **Neuer Chat:** z. B. **⌘T** (wie im Dry-Run)

> Ziel: VS-Code-Nutzer fühlen sich zu Hause; Cursor ergänzt den **Agent-Workflow**.

---

# Live-Prompt: eine Nachricht im Chat

- Beispiel-Prompt (gern mit „menschelndem“ Tippfehler): *What is this project about? Explain me like I'm 5.*
- **Fokus nicht die Antwort** — sondern was **neben dem Text** passiert: Modell, Kontext, Tokens …

---

# Modellauswahl — das Herzstück

- **Pro Chat / pro Lauf:** welches Modell soll der Agent nutzen?
- **Shortcut im Chat:** **⌘⇧/** öffnet die Modell-Auswahl — durchtabben, Vorauswahl ist **team-/nutzerabhängig**
- **All Models** — lange Liste; eigene **API-Keys** (z. B. Anthropic, Google, Azure) möglich, **Usage** ähnlich gelagert

**Medien:** [Model Selection](../../../input/ui-controls/model-selection.png)

[Models (Doku)](https://cursor.com/docs)

---

# Auto, Multiple Models, Max (optional)

- **Auto** — Cursor wählt passendes Modell; oft **günstiger** / sparsamer mit Tokens
- **Use Multiple Models** — mehrere Modelle an **eine** Aufgabe; lohnt zum **Ausprobieren** (Verhalten je nach Setup)
- **Max Mode** — falls in eurer Lizenz nicht enthalten: **überspringen** oder nur erwähnen

---

# Kontextfenster (Context Window)

- Zeigt, wie viel **Kontext** das gewählte Modell „im Kopf“ hat — in **Tokens** (grob: verarbeitete Menge)
- **Rad / Prozent** (z. B. *x % context used*) — wie viel von diesem Fenster die **aktuelle Session** schon verbraucht
- **Wenn es voll wird:** committen, sichern, **neue Session** — sonst **Compaction** (Zusammenfassung + Neustart) → ältere Details gehen verloren

**Medien:** [Context Window](../../../input/ui-controls/context-window.png)

---

# Bild & Voice

- **Bilder** in den Chat (Paste / Drop) — Screenshots, Mockups, Fehler
- **Spracheingabe** — praktisch, gut nutzbar im Alltag

---

# `@` — Mentions & Kontext (Überblick)

- **Dateien, Ordner, Symbole** anhängen — statt alles manuell zu beschreiben
- **Ordner** statt viele Einzeldateien — Struktur auf einmal mitgeben
- **`@Docs`** — Doku per Link / Eintrag (**+** / *Add doc*)
- **`@Past Chats`** — frühere Chats einbinden, wenn die Aufgabe ähnlich ist
- **Details & Regeln** → **Section 03**

![@-Menü (Beispiel)](../../../input/sections/01/Context.png)

[Prompting agents](https://cursor.com/docs/agent/prompting)

---

# Terminal im Chat-Kontext

- **`@Terminal`** — Session / Output **mitgeben**, ohne ganzen Log abzutippen
- Praktisch bei **laufenden Logs**: Verhalten prüfen, Fehler zeigen — oft **selbsterklärend** für das Modell

---

# Branch / Diff zu `main`

- **Im Prompt** z. B. Vergleich Feature-Branch ↔ **`main`** (Produktion) — Agent holt sich Infos über **Git / Shell**
- Cursor 2.0: kein **`@Git`** im Mention-Menü — **formulieren**, was ihr braucht
- Praktisch z. B. für **Merge-Request-Beschreibung**; Referenz-Branch ggf. **konfigurierbar**

---

# Am Abschluss: Features (kurz durchzählen)

- **Semantische Suche** über die indexierte Codebase — [Search](https://cursor.com/docs/agent/tools/search)
- **Simple Browser:** **⌘⇧P** (Command Palette) → *Simple Browser* → URL — **DOM / Struktur** gezielt ins Chat, **DevTools** nutzbar
- **Bildgenerierung** als Agent-Tool (z. B. Mockups) — [Overview → Tools](https://cursor.com/docs/agent/overview#tools)

**Nicht verwechseln:** **Agent-Browser-Tool** = Seite wird vom Agenten bedient · **Simple Browser** = ihr steuert die Seite und schickt Kontext

---

# Queue vs. Sofort senden

- **Enter** → Nachricht in die **Queue** (wie offene Punkte); erst fertig mit dem **aktuellen Prompt**, dann die nächste — gut für **Setup Stück für Stück**, Test-Matrizen, …
- **⌘Enter** (**Ctrl+Enter**) → **sofort** raus; laufender Schritt wird **kurz unterbrochen**, Korrektur rein — z. B. **falsches Package**, Log sieht falsch aus

---

# Wo der Agent läuft (optional)

| Thema | Kurz |
| --- | --- |
| **Laufort** | **Local** / **Worktree** / **Cloud** — im Panel wählbar |
| **Sonstige Tools** | **Shell**, **Web**, … — [Overview → Tools](https://cursor.com/docs/agent/overview#tools) |

---

# Nächster Teil

**Section 02:** **Ask**, **Plan**, **Agent**, **Debug** — wann welcher Modus?

---

# Weiterführend

- [Agent Overview](https://cursor.com/docs/agent/overview)
- [Prompting agents](https://cursor.com/docs/agent/prompting)
- [Documentation Overview](https://cursor.com/docs)

---

## Deck Section 02


# Section 02 — Modi & Settings (Überblick)

**Nach Section 01:** viel Input auf einmal — das kommt **wieder**. Hier: **vier Modi** + **kurzer Settings-Blick** — dann **Miguel**.

[Vollständige Agenda](../../../Workshop.md)

---

# Section 02 — Reihenfolge

1. **Live:** Chat öffnen, frischer Tab, **Modell** (**⌘⇧/**)
2. **Vier Modi** — wann **nicht** Agent?
3. **Shift+Tab** — durchrotieren
4. **Read-only vs. Edits**
5. **Cursor Settings** — v. a. **Agents** & **Indexing**
6. **Übergang:** **Miguel** → Section 03 / 04

---

# Die vier Modi (Kern)

| Modus | Kurz |
| ----- | ---- |
| **Ask** | **Read-only**, schnell, sparsam — **semantische Suche**, einfache **Projektfragen** |
| **Agent** | **Default** — sucht, editiert, Terminal; **„macht was“** |
| **Plan** | **Planung**, **Gegenfragen** — komplexe Aufgaben strukturieren; **Demo → Section 04** |
| **Debug** | **Logs**, **Hypothesen**, Fehlerfokus — oft stark bei **viel Debug-Zeit** |

---

# Default Agent — wann wechseln?

- Viele sind **sofort im Agent** — das ist der **Standard**
- Wenn ihr **nur Fragen** habt und **keine** Dateien / Konfigs geändert haben wollt → **Modus wechseln** (z. B. **Ask**)

---

# Read-only vs. direkt am Code

| | **Ask** · **Plan** | **Agent** · **Debug** |
| --- | --- | --- |
| **Im Talk** | eher **read-only** / erst **klären & planen** | können **Dateien ändern** |

*Feinheiten zu **Plan** und Umsetzung → **Section 04** / Doku.*

---

# Modus wechseln

- **Dropdown** (Mode-Picker) im Chat / Agent-Panel
- **Shift+Tab** — rotiert durch die Modi
- Neues Thema → oft **neuer Chat**

---

# Cursor Settings — was ihr kurz zeigt

| Tab / Thema | Inhalt |
| --- | --- |
| **General** | Look, Notifications, allgemeine Preferences |
| **Agents** | **Zentral:** Shortcuts, **MCP**, **Allowlist**, **Web/Fetch**, **Ignore/Allow**, **Sandbox**, **lokal** |
| **Modell** | wie Section 01 (**⌘⇧/**) |
| **Cloud Agents** | kurz verweisen |
| **Plugins** | **Marketplace** — Skills, Rules, Agents, MCP (Details später) |
| **Indexing** | **„Brain“** der Codebase — Sync/Status bei großen Repos / neuen Dateien |

---

# Merksatz

- **Nur fragen** → nicht im **Agent** hängen bleiben
- **Shift+Tab** kennen
- **Agents-Tab** = Guardrails & Tool-Netz

---

# Als Nächstes

- **Miguel** — **Section 03:** **Context**, **Rules**, **Indexing** vertiefen
- **Section 04:** **Plan-First** / großer **Live-Flow**

---

# Weiterführend

- [Agent (Help)](https://cursor.com/help/ai-features/agent)
- [Ask Mode](https://cursor.com/help/ai-features/ask-mode)
- [Plan Mode](https://cursor.com/docs/agent/plan-mode)
- [Debug Mode](https://cursor.com/docs/agent/debug-mode)
- [Prompting](https://cursor.com/docs/agent/prompting)

---

## Deck Section 03


# Section 03 — Kontext steuern

## Rules · Context · Indexing

**Kernidee:** Bessere Antworten durch **richtigen Kontext** und **klare Regeln** — nicht nur längere Prompts.

[Vollständige Agenda](../../../Workshop.md)

---

# Vier Hebel (Merksätze)

1. **Rules** — dauerhaftes Verhalten (team- und projektweit)
2. **Context** — worauf das Modell **konkret** schaut (`@`, Auswahl)
3. **Indexing** — was im Projekt **auffindbar** ist
4. **Prompting** — aktiviert und fokussiert die drei Punkte darüber

---

# Arten von Rules

| Typ | Kurzbeschreibung |
| --- | --- |
| **Project Rules** (`.cursor/rules`) | Im Repo versioniert — Projekt-Standards |
| **User Rules** | Persönlich, accountweit |
| **Team Rules** | Organisation, zentral vorgegeben |
| **AGENTS.md** | Einfache Markdown-Anweisungen im Repo |

---

# Hierarchie bei Konflikten

```text
AGENTS.md  →  einfache Repo-Guidance

Team Rules  →  Project Rules  →  User Rules
(org)            (repo)           (persönlich)

Konflikt:  Team > Project > User
```

---

# Context aktiv nutzen

- **Ohne** gezielte Auswahl: breite, unscharfe Antworten möglich
- **Mit** `@Datei` / `@Ordner`: Fokus auf das, was wirklich zählt
- **A/B-Test im Team:** gleiche Aufgabe einmal ohne, einmal mit `@` + Rules — Unterschied sichtbar machen

---

# Indexing (kurz)

- Ohne brauchbares **Indexing** findet der Agent Inhalte nicht zuverlässig
- Gute Prompts helfen wenig, wenn relevante Dateien „unsichtbar“ sind
- Mehr in der Doku: [Indexing (Help)](https://cursor.com/help/customization/indexing)

---

# Rules im UI

**Screenshot (Repo):** [rules.png](../../../input/ui-controls/rules.png)

---

# Takeaway

> Nicht mehr nur **mehr Prompt-Text** — sondern **besserer Kontext** und **klare Rules**.

**Als Nächstes — Section 04:** Plan-First von der Idee bis zur ersten Umsetzungsphase.

---

# Weiterführend

- [Rules](https://cursor.com/docs/rules)
- [Prompting Agents](https://cursor.com/docs/agent/prompting)
- [Context (Help)](https://cursor.com/help/customization/context)
- [Indexing (Help)](https://cursor.com/help/customization/indexing)

---

## Deck Section 04


# Section 04 — Plan-First

## Von der Idee zum freigegebenen Plan

**Kern:** Erst **Optionen** und **Entscheidung**, dann **kleine Phasen** — nicht sofort „alles bauen“.

[Vollständige Agenda](../../../Workshop.md)

---

# Was „Plan-First“ bedeutet

1. Keine große Umsetzung ohne **Optionen** und eure **Freigabe**
2. Jede Option: **betroffene Dateien**, **Risiko**, **Validation**
3. Gute Schritte sind **klein**, **prüfbar**, **zurücknehmbar**
4. Ergebnis: ein **freigegebener Mehrphasen-Plan** statt einer langen Wunschliste

---

# Typischer Ablauf (Überblick)

```text
Ask      →  Optionen + Trade-offs
   ↓
Plan     →  Phasen, Checks, Rollback-Ideen
   ↓
Freigabe →  (ihr)
   ↓
Agent    →  eine Phase umsetzen, dann prüfen
```

---

# Subagents (Konzept)

- Bei großen Aufgaben (z. B. **Frontend** + **Backend**) können **einzelne Plan-Todos** an **Subagents** gehen
- Jeder Subagent: **eigenes Context Window** — fokussierte Arbeit
- Danach Ergebnisse **zusammenführen**

---

# Beispiel-Aufgabe (Demo-Kontext)

Optionaler **sekundärer CTA** auf einer **Reservation Card** (oder vergleichbare kleine UI-Erweiterung im **Nuxt / Storybook / UI-Package**-Setup).

**Guard Rails im Repo:** `.cursor/rules` (und ggf. Skills) beachten.

---

# Prompt-Ideen (Struktur)

**Optionen (Ask, read-only):**

- Drei Optionen mit: Dateien, Risiko, einfachster Check — dann **eine** Option wählen

**Plan:**

- Drei **kleine Phasen**: Ziel, Dateien, Erfolgskriterium, **Rollback-Notiz**

**Umsetzung:**

- **Nur Phase 1** im Agent — danach Diff + kurze Validation

*(Längere Prompt-Vorlagen könnt ihr im Workshop-Repo oder von den Referent:innen erhalten.)*

---

# Plan B (wenn Live nicht glänzt)

- Einen **vorbereiteten Plan** zeigen und **gemeinsam** gegenlesen
- Lernziel bleibt: **Struktur vor großem Diff**

---

# Nächster Teil — Section 05

**Skills:** Wiederholbare Team-Workflows als Dateien — z. B. **Jira → Plan** und **Changeset aus Branch-Diff**.

---

# Weiterführend

- [Plan Mode](https://cursor.com/docs/agent/plan-mode)
- [Agent Prompting](https://cursor.com/docs/agent/prompting)
- [Agent Overview](https://cursor.com/docs/agent/overview)

---

## Deck Section 05


# Section 05 — Skills

## Wiederverwendbare Team-Routinen

**Definition:** Portabler, versionierbarer Baustein — der Agent führt **Anweisungen** und optional **Scripts** aus.

[Vollständige Agenda](../../../Workshop.md)

---

# Warum Skills?

| Eigenschaft | Nutzen |
| --- | --- |
| **Portable** | Funktionieren in Agents, die den Standard unterstützen |
| **Version-controlled** | Im Repo oder von GitHub installierbar |
| **Actionable** | Scripts, Templates, Referenzen |
| **Progressive** | Kontext wird bei Bedarf nachgeladen |

---

# Wo liegen Skills?

| Ort | Geltung |
| --- | --- |
| `.agents/skills/` | Projekt |
| `.cursor/skills/` | Projekt |
| `~/.cursor/skills/` | Benutzer (global) |

*(Plus Kompatibilität: `.claude/`, `.codex/` — siehe Doku.)*

---

# Minimaler Aufbau

```text
.agents/skills/my-skill/
  └── SKILL.md
```

**Mit Erweiterungen:** `scripts/`, `references/`, `assets/`

---

# SKILL.md (Frontmatter)

Pflichtfelder:

- **`name`** — Kleinbuchstaben, Zahlen, Bindestriche; = Ordnername
- **`description`** — Wann und wofür der Skill gilt (Relevanz für den Agent)

Optional:

- **`disable-model-invocation: true`** → Skill **nur** bei **`/skill-name`**, nicht automatisch

---

# Skill 1 — Jira → Plan

**Idee:** Ticket-URL oder Nummer → Script holt Daten → Codebase → **Plan** (oder Umsetzung).

**Material im Workshop-Repo:**

- [SKILL.md — Planning Jira](../../../input/sections/05/planning-jira-ticket-implementation/SKILL.md)
- Script: `scripts/get-jira-issue.sh`

---

# Skill 2 — Changeset aus Main-Diff

**Idee:** Aktueller Branch vs. **`origin/main`** → betroffene **Packages** → **Bump-Typ** → `.changeset/*.md`.

**Material:**

- [SKILL.md — Changeset from main diff](../../../input/sections/05/create-changeset-from-main-diff/SKILL.md)

---

# Aufruf

- **Automatisch** — wenn der Agent den Skill für passend hält
- **Manuell** — **`/`** tippen, Skill suchen
- **Explizit nur** — mit `disable-model-invocation: true`

---

# Nächster Teil — Section 06

**MCP:** Cursor mit **Browser**, **Figma** und anderen Tools **über das Protokoll** verbinden — mit **Tool-Approval**.

---

# Weiterführend

- [Agent Skills (Cursor Docs)](https://cursor.com/docs/skills)
- [Agent Skills Standard](https://agentskills.io/)

---

## Deck Section 06


# Section 06 — MCP (kurz)

## Model Context Protocol

**Kern:** Externe **Tools** und **Datenquellen** — angebunden an den Agent, mit **sichtbaren Tool-Calls** und **Freigabe**.

[Vollständige Agenda](../../../Workshop.md)

---

# Was MCP bringt

- Weniger **Copy-Paste** von Kontext aus Browser, Design-Tools, Tickets, …
- **Direkte** Anbindung über Server (lokal **stdio** oder remote **HTTP/SSE** — je nach Setup)
- Passt zu **Plan Mode** und **Agent** (siehe [MCP Docs](https://cursor.com/docs/mcp))

---

# Zwei Demos in diesem Workshop

| Demo | Inhalt |
| --- | --- |
| **Chrome DevTools MCP** | Live-Daten aus dem Browser (z. B. **A11y** oder **INP**) |
| **Figma MCP** | Specs, Abstände, Struktur aus dem Design — ohne Raten |

**Detaillierte Schrittfolgen** (zum Mitgehen):

- [Runbook: Chrome DevTools MCP](../../../input/sections/06/01-chrome-devtools-mcp-demo.md)
- [Runbook: Figma MCP](../../../input/sections/06/02-figma-mcp-demo.md)

---

# Sicherheit (Kurzcheckliste)

- **Quelle** des MCP-Servers vertrauen?
- **Rechte** und **Secrets** minimal halten
- Kritische Aktionen **reviewen**
- Mehr: [Agent Security](https://cursor.com/docs/agent/security)

---

# Merksätze

- **Demo 1:** *Daten kommen aus dem Browser über MCP — nicht aus dem Kopf des Modells.*
- **Demo 2:** *Design-Kontext aus Figma — strukturiert, nicht geraten.*

---

# Nächster Teil — Section 07

**Abschluss & Adoption:** konkrete **erste Schritte** fürs Team — plus Q&A.

---

# Weiterführend

- [MCP (Cursor Docs)](https://cursor.com/docs/mcp)
- [MCP Introduction](https://modelcontextprotocol.io/introduction)
- [Chrome DevTools MCP (GitHub)](https://github.com/ChromeDevTools/chrome-devtools-mcp)
- [Web Development (Cursor)](https://cursor.com/for/web-development)

---

## Deck Section 07


# Section 07 — Abschluss & nächste Schritte

**Ziel:** Aus Inspiration wird **klein startfähiger** Rollout — pro Team, pro Projekt.

[Vollständige Agenda](../../../Workshop.md)

---

# Reflexion (Open Round)

**Frage an euch:**

*Was wollt ihr ab morgen mit Cursor **anders** machen?*

---

# Starter-Pack pro Projekt (3 Artefakte)

1. **`.cursor/rules`** — z. B. Framework- und API-Konventionen
2. **`AGENTS.md`** — kurze, klare Agent-Instruktionen (5–8 Sätze / Bullet-Ketten)
3. **Ein Skill** — für eine **wiederholte** Routine (Ticket, Changeset, Release-Check, …)

---

# Adoption — erste Woche (Beispiel-Richtung)

- **Zwei** konkrete Workflows **jetzt** starten (z. B. Plan-First für Features, Skill für Changesets)
- **Einen** Workflow **bewusst später** (wenn Grundlagen sitzen)
- Nach einer Woche: **kurzes Review** — was hat gehalten, was nicht?

---

# Governance (ein Rahmen)

- Wann reicht **Planning**?
- Wann lohnen **Subagents**, **Background-Agent** oder **Cloud** — und was erlaubt eure **Policy**?

---

# Q&A

- Offene Fragen aus dem Talk
- **Nächster Schritt** pro Team klären — wer verantwortet Rules, Skills, MCP-Setup?

---

# Weiterführend

- [Rules](https://cursor.com/docs/rules)
- [Skills](https://cursor.com/docs/skills)
- [Subagents](https://cursor.com/docs/subagents)
- [Agent Security](https://cursor.com/docs/agent/security)
- [Teams Setup](https://cursor.com/docs/account/teams/setup)

---

# Danke

**Cursor Agentic Coding in Practice** — Dogan Teke & Miguel Franken

Materialien und Folien: siehe Workshop-Repository (`output/sections/*/slides.md`).
