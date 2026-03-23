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

## Section 01 — Einstieg: Der Agent

**Fragestellungen:** Kontext im Chat? Tools? Wo läuft es? Wie steuert ihr nach?

[Vollständige Agenda](../../../Workshop.md)

---

# Agent-Arbeit ist kein „normaler Chat“

- [Overview](https://cursor.com/docs/agent/overview): **Instructions**, **Tools**, **Modell**
- Ihr steuert **Nachrichten** + **Kontext** (`@`) und **Queue** (Enter / Cmd+Enter)

**Roter Faden:** erst **Chat-Kontext**, dann **Tools**, dann **Laufumgebung & UI**

---

# Kontext im Chat: `@`

- **Datei** · **Ordner** · **Code-Symbol**
- **`@Docs`** — auch **eigene** Dokumentation (*Add new doc*)
- **`@Past Chats`**
- **Diff / Branch zu `main`:** im **Prompt** beschreiben (Cursor 2.0: kein `@Git` im Menü)
- **Terminal:** Agent nutzt **Shell**-Tool; Dateien mit `@` anpinnen

![@-Menü (Beispiel)](../../../input/sections/01/Context.png)

[Prompting agents](https://cursor.com/docs/agent/prompting)

---

# Tools (was der Agent ausführt)

| | |
| --- | --- |
| **Semantic Search** | Codebase nach Bedeutung |
| **Shell / Web / Edit** | Terminal, Recherche, Dateien |
| **Browser-Tool** | Seite **steuern**, Screenshots ([Doku](https://cursor.com/docs/agent/tools/browser)) |
| **Bildgenerierung** | z. B. Mockups → oft `assets/` |

**Abgrenzung:** **`@`** = Kontext **in den Prompt** · **Browser-Tool** = echte **UI-Session**

[Overview → Tools](https://cursor.com/docs/agent/overview#tools)

---

# Wo arbeitet der Agent?

| Laufumgebung | Kurz |
| --- | --- |
| **Local** | Euer Workspace |
| **Worktree** | Isolierte lokale Sandbox |
| **Cloud** | Separater Lauf / Branch |

→ **Risiko** & **Zusammenarbeit**

---

# UI: drei Anker

1. **Context Window** — woher kommt der Kontext?
2. **Modellauswahl**
3. **Laufumgebung** (Local / Worktree / Cloud)

**Medien:**

- [Context `@`](../../../input/sections/01/Context.png)
- [Context Window](../../../input/ui-controls/context-window.png)
- [Model Selection](../../../input/ui-controls/model-selection.png)
- [Worktree](../../../input/ui-controls/work-tree.png)

---

# Nachsteuern während der Arbeit

| Aktion | Wirkung |
| --- | --- |
| **Enter** | **Queue** — nach aktuellem Schritt |
| **Cmd+Enter** / **Ctrl+Enter** | **Sofort** — Eingriff |

> Queue lässt fertigarbeiten — Immediate korrigiert den Lauf.

---

# Bilder im Prompt

- **Paste** (`Cmd+V`) oder **Drag & Drop** — Screenshots, Fehler, Mockups
- Zusätzlich: Agent kann **Bilder generieren** (Tool)

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


# Section 02 — Modi: Ask, Plan, Agent, Debug

**Ziel:** Das richtige Werkzeug für die Aufgabe — nicht „immer Agent“.

[Vollständige Agenda](../../../Workshop.md)

---

# Die vier Modi auf einen Blick

| Modus | Wofür? | Dateien ändern? |
| --- | --- | --- |
| **Ask** | Verstehen, erkunden, Optionen | **Nein** (read-only) |
| **Agent** | Bauen, refactoren, fixen, Tests | **Ja** |
| **Plan** | Komplex: erst Plan, dann Freigabe, dann Umsetzung | **Ja** (nach Plan) |
| **Debug** | Bugs mit Laufzeit / Logs / Hypothesen | **Ja** |

---

# Faustregel

- **Unklarheit** oder **viele Dateien** → **Ask** oder **Plan**
- **Kleine, klare** Aufgabe → **Agent**
- **Unklares Fehlerbild** → **Debug**

> Immer den **passendsten** Modus wählen — nicht den schnellsten.

---

# Ein Satz pro Modus

- **Ask** — Antworten und Exploration, **keine** Edits ([Ask Mode](https://cursor.com/help/ai-features/ask-mode))
- **Agent** — Suchen, Editieren, Terminal — Standard für Umsetzung ([Agent](https://cursor.com/help/ai-features/agent))
- **Plan** — Anforderungen klären, Plan erstellen, **von euch freigeben**, dann bauen ([Plan Mode](https://cursor.com/docs/agent/plan-mode))
- **Debug** — Hypothesen, Instrumentierung, Evidenz, dann Fix ([Debug Mode](https://cursor.com/docs/agent/debug-mode))

---

# Modus wechseln

- **Dropdown** im Agent-Panel (Mode-Picker)
- **Shift+Tab** — rotiert durch die Modi
- Tipp: Bei **Themenwechsel** oft ein **neuer Chat** — sauberer Kontext

---

# Kontext kurz: `@` und mehr

- Mit **`@`** Dateien, Ordner, Symbole, Docs anhängen — gezielt statt „alles“
- **Bilder** und **Spracheingabe** sind möglich
- Details zu **Rules** und **Indexing** → **Section 03**

---

# Visuelle Einordnung (optional)

- [Ask (GIF)](../../../input/modes/ask/ask.gif) · [Agent (GIF)](../../../input/modes/agent/agent.gif)
- [Plan (GIF)](../../../input/modes/plan/plan.gif) · [Todos (GIF)](../../../input/modes/plan/todos.gif)
- [Plan-Abschluss (PNG)](../../../input/modes/plan/plan-final.png) · [Debug (GIF)](../../../input/modes/debug/debug.gif)

---

# Was als Nächstes kommt

- **Section 03:** **Rules**, **Context**, **Indexing** — wie ihr Antwortqualität steuert
- **Section 04:** Kompletter **Plan-First**-Ablauf live

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
