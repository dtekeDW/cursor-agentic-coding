---
marp: true
paginate: true
footer: 'Cursor Agentic Coding — Section 05'
---

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
