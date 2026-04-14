---
marp: true
paginate: true
footer: 'Cursor Agentic Coding — Section 05'
---

# Section 05 — Skill Demo Time

## Konkrete Skills live im Flow

**Ziel:** zeigen, wie konkrete Skills reale Team-Workflows beschleunigen.

Skills-Referenz (volle Beschreibungen):  
`/Users/dteke/Developer/docker/projects/ms_frontend/.agents/skills`

[Vollständige Agenda](../../../Workshop.md)

---

# Demo-Reihenfolge (8 Min)

| # | Thema | Presenter |
|---|--------|-------------|
| 1 | Jira Planning | Miguel |
| 2 | Changeset (Diff → `.changeset`) | Dogan |
| 3 | Worktree + Merge Request | Miguel |
| 4 | Analyze Failed Pipeline | Dogan |
| 5 | Next.js (AI-ready Setup / Docs-first) | Miguel |
| 6 | Playwright (`playwright-cli` + Guides) | Dogan |

**Fallback:** vorbereitete Outputs, falls Live hakt — ein Skill live, Rest kurz walkthrough.

---

# Demo 1 — Jira Planning Skill (Miguel)

**Skills:** `jira-code-planning` · Ordner `planning-jira-ticket-implementation`

Kurz: **nur Planung, kein Code** — Ticket sauber einlesen, Repo verstehen, strukturierten Umsetzungsplan liefern.

- **Input:** Jira-Ticket-ID (z. B. `MOP-123`) oder URL — ohne das stoppt der Skill und fragt nach.
- **Ablauf (Idee):** lokales Script `scripts/jira/get-jira-issue.sh` → JSON; Felder (Summary, Description, Story, AC); bei **Figma-Links** optional MCP-Kontext; dann **Codebase** (Pfade, Packages, Flows); **Package-Grenzen** und **AC-Mapping**.
- **Output:** Markdown mit u. a. Ticket context, Problem, Codebase-Analyse, Plan mit Edit-Locations zuerst, Risiken/QA.

Details: `…/planning-jira-ticket-implementation/SKILL.md`

---

# Demo 2 — Changeset Skill (Dogan)

**Skill:** `create-changeset-from-main-diff`

Etwas **Input** für den Agenten hilft — nicht nur „mach ein Changeset“, sondern Kontext mitgeben.

**Sinnvoller Input (Beispiele):**

- Branch ist gepusht; **Vergleich immer gegen `origin/main`** (`git fetch origin main` → Diff / Log).
- **Bump-Typ:** `patch` | `minor` | `major` pro Package — sonst fragt der Skill nach (Default nicht blind `patch`).
- Welche **Packages** release-relevant sind; ob schon eine **`.changeset/*.md`** für ein Package existiert → **mergen** statt zweite Datei.
- Release-Notes: **nutzer-/reviewer-sichtbar**, keine internen Refactors — Bullets nach Thema gruppieren.

**Kernkommandos (Skill):**  
`git diff --name-only origin/main...HEAD` · `git log --oneline origin/main..HEAD` · Package über nächstes `package.json` auflösen.

---

# Demo 3 — Worktree + Merge Request (Miguel)

**Showcase:** isoliert in einem Slot arbeiten → Branch pushen → **MR mit echtem Diff** erstellen.

### `use-worktree`

- Drei feste Slots: **`wt-1` · `wt-2` · `wt-3`** (`$use-worktree wt-2`) — Pfade `../<repo>-wt-*` neben dem Repo.
- Root-Checkout = Kontrolle; **Arbeit im Slot** (`workdir` auf Worktree).
- Standard-**Base** für Task-Branches: **`stage`** (nicht raten — Skill sagt das explizit).

### `create-merge-request`

- Branch **bereits gepusht**; Zielbranch auflösen (in diesem Repo oft **`stage`**).
- **Diff** gegen Ziel: `git diff origin/<target>...HEAD` — **Diff ist authoritative**; Jira nur Kontext.
- **glab** + MR-Text (Summary / Impact / Test Plan); Duplikate vermeiden (`glab mr list`).

Skills: `…/use-worktree/SKILL.md` · `…/create-merge-request/SKILL.md`

---

# Demo 4 — Analyze Failed Pipeline (Dogan)

**Skill:** `analyze-failed-pipeline-jobs`

- **Reporter-Modus:** Pipeline(s) und **failed jobs** mit **`glab`** inspizieren, **Traces** holen — **kein automatisches Fixen** im Skill-Flow.
- Default: **letzte Pipeline** auf dem aktuellen Branch; alle Jobs mit Status `failed` tracen (`glab ci trace <job-id>`).
- Output: pro Job Kurzfassung, **likely causes**, Mini-Plan, optional **Proposal** (Pfad aus dem Log — evidenzbasiert).
- **Proxy:** Skill verlangt festes Prefix `HTTP_PROXY`/`HTTPS_PROXY` für `glab` (Corporate-Umgebung).

Skill: `…/analyze-failed-pipeline-jobs/SKILL.md`

---

# Demo 5 — Next.js (Miguel)

**Thema:** Next.js so einrichten, dass der Agent **nicht auf veraltetes Training** setzt — **Docs im Repo** als Quelle.

Referenz (Next.js 16.x AI-ready Setup):  
https://nextjs.org/blog/next-16-2-ai#ai-ready-project-setup

**Regel-Idee (in Rules / Skill-Text):**

```
<!-- BEGIN:nextjs-agent-rules -->

# Next.js: ALWAYS read docs before coding

Before any Next.js work, find and read the relevant doc in `node_modules/next/dist/docs/`.
Your training data is outdated — the docs are the source of truth.

<!-- END:nextjs-agent-rules -->
```

Kurz zeigen: **warum** „read local docs first“ bei Next — nicht der komplette Deep Dive (kommt im Gespräch).

---

# Demo 6 — Playwright Skill (Dogan)

Zwei zusammengehörige Skills im Monorepo:

### `playwright-cli`

- CLI: `playwright-cli open` → `goto` / `click` / `fill` / `snapshot` — Refs aus der Snapshot-Datei.
- Sessions, Tabs, Netzwerk, Tracing — für **Debug, Repro, Screenshots** ohne volle E2E-Suite.

### `playwright-guides`

- **E2E-Alignment:** vor ad-hoc-Klicks **`e2e/`** prüfen (Specs, Page Objects, `data-test-id`) — gleicher **Contract** wie CI.
- Dev-Server vorher (z. B. `pnpm run dev:webapp`); bei fehlender Abdeckung kurz klären, ob neuer Test oder nur CLI-Check.

Skills: `…/playwright-cli/SKILL.md` · `…/playwright-guides/SKILL.md`

---

# ms_frontend — Skill-Landschaft (Auszug)

**Pfad:** `…/ms_frontend/.agents/skills`

- **Framework / Stack:** `nuxt`, `vue`, `pinia`, `unocss`, `vitest`, …
- **Repo-Workflows:** `planning-jira-ticket-implementation`, `create-changeset-from-main-diff`, `use-worktree`, `create-merge-request`, `analyze-failed-pipeline-jobs`
- **Qualität / E2E:** `playwright-cli`, `playwright-guides`, `e2e-guides`

Inspiration Community-Skills: https://github.com/antfu/skills

---

# Warum das im Team stark ist

- Wiederholbare Outputs statt jedes Mal neue Prompts
- Einheitlicher Qualitätsstandard fuer alle
- Schnellere Einarbeitung fuer neue Teammitglieder

---

# Sprecher-Handoff

- **Miguel:** Demo 1 (Jira), 3 (Worktree + MR), 5 (Next.js)
- **Dogan:** Demo 2 (Changeset), 4 (Failed Pipeline), 6 (Playwright)
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
