# Section 05 - Skills: Wiederverwendbare Team-Routinen

| Feld       | Wert             |
| ---------- | ---------------- |
| Section-ID | `05`             |
| Owner      | `Miguel`         |
| Zeit       | `7 Min`          |
| Status     | `ready-for-demo` |
| Kern-Demo  | `ja`             |

## Navigation

- [Workshop Master](../../../Workshop.md)
- [Prev: Section 04](../04/section.md)
- [Next: Section 06](../06/section.md)

## Ziel dieser Section

- Section 05 zeigt, wie ihr **Skills sauber definiert** und **Invocation bewusst steuert**.
- Fokus auf praktische Team-Skills: Changeset-Erstellung und Jira-Integration.

## Kernbotschaft (in 60 Sekunden)

1. Ein Skill macht aus einem guten Einzelprompt eine wiederholbare Team-Routine.
2. Skills können automatisch verwendet oder explizit mit `/skill-name` aufgerufen werden.
3. `disable-model-invocation: true` erzwingt explizite Nutzung (Slash-Command-Verhalten).
4. Praktischer Effekt: Weniger Prompt-Varianz, klarere Ergebnisse, bessere Team-Adoption.

## Was du konkret erklärst

1. **Skill-Aufbau**: Ordner + `SKILL.md` mit Frontmatter (`name`, `description`), optional `scripts/`, `references/`, `assets/`.
2. **Invocation-Varianten**:
   - Standard: Agent entscheidet automatisch anhand von Kontext + Description.
   - Explizit: `/skill-name` im Chat.
   - Nur explizit: `disable-model-invocation: true`.
3. **Praktischer Effekt**: Weniger Prompt-Varianz, klarere Ergebnisse, bessere Team-Adoption.

## Eure Demo-Skills

### 1. Changeset Skill

**Zweck:** Automatisierte Erstellung von `.changeset/*.md` Dateien für Deployments und Releases.

**Was der Skill macht:**
- Vergleicht aktuellen Branch mit `origin/main`
- Ermittelt betroffene Packages aus den Änderungen
- Fragt nach Bump-Type (`patch`, `minor`, `major`)
- Erstellt release-note-freundliche Changeset-Datei

**Skill-Struktur:**
```yaml
---
name: create-changeset-from-main-diff
description: Create and update `.changeset/*.md` files by comparing the current branch against `origin/main` and summarizing only relevant package changes.
---
```

**Demo-Prompt:**
```text
Create a changeset for my current changes. Compare against main and suggest appropriate bump types.
```

### 2. Jira Skill

**Zweck:** Jira-Integration für Ticket-Erstellung und -Updates direkt aus dem Code-Kontext.

**Was der Skill macht:**
- Erstellt Jira-Tickets aus Code-Kontext oder TODOs
- Verlinkt Commits/PRs mit Jira-Issues
- Aktualisiert Ticket-Status basierend auf Branch-Aktivität

**Skill-Struktur:**
```yaml
---
name: jira-integration
description: Create and update Jira tickets from code context. Use when linking code changes to project management.
disable-model-invocation: true
---
```

**Demo-Prompt:**
```text
/jira-integration Create a ticket for this bug fix with acceptance criteria based on the code changes.
```

## Was du live in Cursor zeigst (7-Minuten-Ablauf)

1. **1:00 Framing**: Problem benennen — Ad-hoc-Prompting liefert je nach Formulierung stark schwankende Qualität.
2. **2:00 Skill-Definition zeigen**:
   - Wo Skills liegen (`.cursor/skills/` oder global `~/.cursor/skills/`)
   - Minimaler Frontmatter-Block (`name`, `description`)
   - `disable-model-invocation` als Schalter für expliziten Aufruf
3. **2:00 Changeset Skill live**:
   - Branch mit Änderungen zeigen
   - Skill aufrufen (Auto-Invocation oder explizit)
   - Ergebnis: saubere Changeset-Datei ohne interaktive Prompts
4. **1:30 Jira Skill kurz zeigen**:
   - Expliziter Aufruf mit `/jira-integration`
   - Zeigen, wie Code-Kontext in Ticket-Beschreibung fließt
5. **0:30 Takeaway + Bridge**:
   - "Skills standardisieren Team-Workflows und reduzieren Prompt-Varianz."
   - Übergang zu Section 06 (Debug-Showcase).

## Prompt-Bausteine für die Demo

**Changeset erstellen**
```text
Create a changeset for my current branch changes.
Compare against origin/main, identify affected packages, and suggest bump types.
Format as a proper .changeset/*.md file.
```

**Jira-Ticket erstellen**
```text
/jira-integration
Create a Jira ticket for the bug I just fixed.
Include:
- Summary from commit message
- Acceptance criteria based on code changes
- Link to affected files
```

**Skill-Vergleich (ohne vs. mit Skill)**
```text
# Ohne Skill (Ad-hoc)
"Hey, kannst du mir ein Changeset erstellen? Ich hab was geändert..."

# Mit Skill (Standardisiert)
"Create a changeset for my current changes."
→ Skill weiß bereits: Branch vergleichen, Packages finden, Format einhalten
```

## Mini-Snippet für Skill-Invocation-Steuerung

```yaml
---
name: my-team-skill
description: Use for repeatable team workflow X with consistent output format.
disable-model-invocation: true
---

# My Team Skill

## Workflow
1. Step one...
2. Step two...

## Rules
- Always do X before Y
- Output format: ...
```

## Plan B (wenn Live-Trigger hängt)

1. Vorbereitete Outputs für Changeset-Skill als Backup zeigen.
2. Skill-Datei direkt öffnen und Struktur erklären.
3. Zeit sparen: Snippet statt kompletter Datei zeigen.

## Was die Audience nach Section 05 verstanden haben soll

- Skills sind der Hebel für teamweite Konsistenz.
- Invocation ist steuerbar: automatisch, explizit oder explizit-erzwungen.
- Praktische Anwendung: Changeset-Erstellung und Jira-Integration als Team-Standards.
- Skills reduzieren Zufall und erhöhen Nachvollziehbarkeit.

## Doc-Referenzen (Web)

- [Skills](https://cursor.com/docs/skills)

## To-dos (Section 05)

- [ ] Changeset-Skill im Demo-Repo bereitstellen oder Pfad zum globalen Skill dokumentieren.
- [ ] Jira-Skill finalisieren und `name`/`description` auf euren Use Case anpassen.
- [ ] A/B-Prompts finalisieren (Ad-hoc vs. Skill-basiert) und 1 Vergleichsfolie vorbereiten.
- [ ] Plan-B-Outputs vorab sichern.
