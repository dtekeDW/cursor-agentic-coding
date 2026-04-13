---
marp: true
paginate: true
footer: 'Cursor Agentic Coding — Section 04'
---

# Section 04 — Skills erklärt

## Wiederverwendbare Agent-Workflows

[Vollständige Agenda](../../../Workshop.md)

---

# Warum Skills?

| Punkt | Nutzen |
| --- | --- |
| **Portable** | Laeuft in Agenten mit Skills-Standard |
| **Versioniert** | Im Repo nachvollziehbar und teilbar |
| **Actionable** | Kann Scripts und Templates ausfuehren |
| **Progressive** | Laedt nur den noetigen Kontext |

---

# Wo liegen Skills?

```text
.agents/skills/     # Projekt
.cursor/skills/     # Projekt
~/.cursor/skills/   # global
```

---

# Minimaler Aufbau

```text
my-skill/
  SKILL.md
  scripts/        (optional)
  references/     (optional)
  assets/         (optional)
```

---

# SKILL.md Frontmatter (Pflicht)

```yaml
---
name: create-changeset-from-main-diff
description: Use when a branch needs a changeset from main diff.
---
```

- `name` muss zum Ordnernamen passen.
- `description` steuert, wann der Agent den Skill relevant findet.

---

# Invocation

- **Automatisch:** Agent ruft bei Relevanz auf.
- **Manuell:** `/` tippen und Skill auswaehlen.
- **Nur manuell:** `disable-model-invocation: true`

---

# Skill-Kategorien (allgemein)

| Kategorie | Typische Aufgabe |
| --- | --- |
| **Delivery** | Release, Merge Request, Changesets |
| **Planning** | Jira/Ticket-Analyse, Umsetzungsplaene |
| **Framework** | Vue, Nuxt, Pinia, UnoCSS Patterns |
| **Quality** | Vitest, Playwright, E2E, Pipeline-Analyse |
| **Documentation** | Storybook-Doku, strukturierte Outputs |

---

# Frontmatter Fields (SKILL.md)

| Field | Required | Description |
| --- | --- | --- |
| `name` | Yes | Skill identifier. Lowercase letters, numbers, and hyphens only. Must match the parent folder name. |
| `description` | Yes | Describes what the skill does and when to use it. Used by the agent to determine relevance. |
| `license` | No | License name or reference to a bundled license file. |
| `compatibility` | No | Environment requirements (system packages, network access, etc.). |
| `metadata` | No | Arbitrary key-value mapping for additional metadata. |
| `disable-model-invocation` | No | When `true`, the skill is only included when explicitly invoked via `/skill-name`. The agent will not automatically apply it based on context. |

---



# Best Practices fuer gute Skills

- Eine Aufgabe pro Skill klar fokussieren
- Konkrete Inputs/Outputs in der `SKILL.md` beschreiben
- Scripts klein und robust halten
- Details bei Bedarf in `references/` auslagern

---

https://vercel.com/blog/agents-md-outperforms-skills-in-our-agent-evals

"AGENTS.md outperforms skills in [Vercels] agent evals"

---

# Takeaway

- Skills machen Team-Workflows reproduzierbar.
- Weniger Prompt-Zufall, mehr konsistente Outputs.

---

# Als Naechstes — Section 05

**Demo-Zeit:** konkrete Skills live (Jira, Changeset, ms_frontend-Skills).

---

# Weiterführend

- [Skills](https://cursor.com/docs/skills)
- [Agent Skills Standard](https://agentskills.io/)
