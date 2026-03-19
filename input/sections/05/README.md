# Demo-Skills für Section 5

Diese Skills stammen aus dem Projekt **ms_frontend** und werden in der Workshop-Section 5 als Live-Demo genutzt.

- **planning-jira-ticket-implementation** (Jira): Holt Jira-Ticket per Script `scripts/get-jira-issue.sh`, optional Figma-MCP, analysiert Codebase, erstellt einen Plan (kein Code). Script erwartet `JIRA_API_KEY` in `.env` bzw. Umgebung.
- **create-changeset-from-main-diff** (Changeset): Vergleicht aktuellen Branch mit `origin/main`, ermittelt betroffene Packages, erstellt oder merged `.changeset/*.md` mit korrektem Package-Scope — beim Merge entfällt manuelles Changelog-Schreiben.

Die SKILL.md-Dateien liegen in den jeweiligen Unterordnern; der Jira-Skill verweist auf `scripts/get-jira-issue.sh` im gleichen Skill-Ordner (Pfad im Workshop: `input/sections/05/planning-jira-ticket-implementation/scripts/get-jira-issue.sh`).
