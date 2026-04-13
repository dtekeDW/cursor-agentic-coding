---
marp: true
paginate: true
footer: 'Cursor Agentic Coding — Section 05'
---

# Section 05 — Skill Demo Time

## Konkrete Skills live im Flow

**Ziel:** zeigen, wie konkrete Skills reale Team-Workflows beschleunigen.

[Vollständige Agenda](../../../Workshop.md)

---

# Demo-Reihenfolge (8 Min)

1. **Jira Skill** zeigen (Planung aus Ticket)
2. **Changeset Skill** zeigen (Diff -> Changeset)
3. **ms_frontend Skill-Landschaft** (Miguel Deep Dive)
4. **Kurzvergleich:** manuell vs. mit Skill
5. **Fallback:** vorbereitete Outputs, falls Live hakt

---

# Demo 1 — Jira Planning Skill

- Skill: `jira-code-planning` / `planning-jira-ticket-implementation`
- Input: Jira Ticket-ID oder URL
- Output: strukturierter Implementierungsplan (ohne Code)

---

# Demo 2 — Changeset Skill

```text
Use create-changeset-from-main-diff
Compare current branch with origin/main
Create/merge .changeset entry with affected package bumps
```

---

# Demo 3 - NextJS Skill

https://nextjs.org/blog/next-16-2-ai#ai-ready-project-setup

```
<!-- BEGIN:nextjs-agent-rules -->
 
# Next.js: ALWAYS read docs before coding
 
Before any Next.js work, find and read the relevant doc in `node_modules/next/dist/docs/`. Your training data is outdated — the docs are the source of truth.
 
<!-- END:nextjs-agent-rules -->
```

---

# Demo 4 - Vercel/Workflow Skill

https://skills.sh/vercel/workflow/workflow

---

# Demo 4 — ms_frontend Skills (Miguel)

**Pfad:** `/Users/dteke/Developer/docker/projects/ms_frontend/.agents/skills`

- Framework: `nuxt`, `vue`, `pinia`, `unocss`
- Quality: `vitest`, `playwright-cli`, `e2e-guides`
- Doku/Struktur: `storybook-customer-docs`, `find-skills`, `write-changeset-description`

---

# Warum das im Team stark ist

- Wiederholbare Outputs statt jedes Mal neue Prompts
- Einheitlicher Qualitätsstandard fuer alle
- Schnellere Einarbeitung fuer neue Teammitglieder

---

# Sprecher-Handoff

- **Dogan:** Jira + Changeset Skill Demos
- **Miguel:** ms_frontend Skills (Framework + Doku + Struktur)
- Wechsel klar ansagen, damit der rote Faden stabil bleibt

---

# Plan B (Live-Absicherung)

- Vorgefertigte Skill-Outputs zeigen
- Nur einen Skill live ausfuehren, Rest kurz walkthrough
- Lernziel bleibt: konkreter Mehrwert von Skills sichtbar machen

---

# Nächster Teil — Section 06

**MCP:** externe Tools und Datenquellen kontrolliert in den Workflow holen.

---

# Weiterführend

- [Plan Mode](https://cursor.com/docs/agent/plan-mode)
- [Agent Overview](https://cursor.com/docs/agent/overview)
- [Prompting](https://cursor.com/docs/agent/prompting)
