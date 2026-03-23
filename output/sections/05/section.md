# Section 05 — Skills: Wiederverwendbare Team-Routinen

**Vollständige Section-Referenz** (Inhalt + Sprechtext).  
**Kurz am Pult:** [presentation.md](presentation.md) · **Folien:** [slides.md](slides.md)

| Feld       | Wert             |
| ---------- | ---------------- |
| Section-ID | `05`             |
| Owner      | `Dogan & Miguel` |
| Zeit       | `8 Min`          |
| Status     | `ready-for-demo` |
| Kern-Demo  | `ja`             |

## Navigation

- [Ablauf-Checkliste (Referent:innen)](presentation.md)
- [Folien (Audience)](slides.md)
- [Workshop Master](../../../Workshop.md)
- [Prev: Section 04](../04/section.md)
- [Next: Section 06](../06/section.md)

## Ziel dieser Section

- Section 05 **erklärt und präsentiert** das Thema Skills ausführlicher — angelehnt an die [Cursor Docs](https://cursor.com/docs/skills): Was sind Skills, wie funktionieren sie, wo liegen sie, wie ist die Ordnerstruktur, welche Frontmatter-Felder gibt es, was bewirkt `disable-model-invocation`, welche optionalen Ordner (scripts/references/assets) genutzt werden können.
- Danach zwei konkrete Demo-Skills (Jira, Changeset) aus dem Repo zum Durchsprechen und optionalen Live-Demo.

## Erklärung & Präsentation (an Cursor Docs angelehnt)

**Quelle:** [Agent Skills \| Cursor Docs](https://cursor.com/docs/skills) — offener Standard zum Erweitern von Agents mit spezialisierten Fähigkeiten.

### Was sind Skills?

Ein Skill ist ein **portabler, versionierbarer** Baustein, der dem Agenten beibringt, domänenspezifische Aufgaben auszuführen. Skills können Scripts, Templates und Referenzen enthalten, die der Agent mit seinen Tools ausführt.

| Eigenschaft | Bedeutung |
| ----------- | --------- |
| **Portable** | Skills funktionieren in jedem Agent, der den Agent-Skills-Standard unterstützt. |
| **Version-controlled** | Als Dateien im Repo oder per GitHub-URL installierbar. |
| **Actionable** | Scripts, Templates, Referenzen — der Agent führt sie mit seinen Tools aus. |
| **Progressive** | Ressourcen werden bei Bedarf geladen, Kontext bleibt effizient. |

### Wie Skills funktionieren

- Beim Start **entdeckt Cursor** Skills in den Skill-Verzeichnissen und stellt sie dem Agent zur Verfügung.
- Der Agent **entscheidet anhand des Kontexts**, wann ein Skill relevant ist.
- **Manuell aufrufen:** Im Agent-Chat `/` tippen und nach dem Skill-Namen suchen.

### Skill-Verzeichnisse (wo Cursor lädt)

| Ort | Geltungsbereich |
| --- | ----------------- |
| `.agents/skills/` | Projekt |
| `.cursor/skills/` | Projekt |
| `~/.cursor/skills/` | Benutzer (global) |

Zusätzlich (Kompatibilität): `.claude/skills/`, `.codex/skills/` sowie die jeweiligen User-Pfade.

### Ordnerstruktur (minimal und vollständig)

**Minimal:** Ein Skill ist ein Ordner mit einer `SKILL.md`:

```text
.agents/
└── skills/
    └── my-skill/
        └── SKILL.md
```

**Mit optionalen Ordnern** (Scripts, Referenzen, Assets):

```text
.agents/
└── skills/
    └── deploy-app/
        ├── SKILL.md
        ├── scripts/
        │   ├── deploy.sh
        │   └── validate.py
        ├── references/
        │   └── REFERENCE.md
        └── assets/
            └── config-template.json
```

### SKILL.md-Format und Frontmatter

Jeder Skill wird in einer `SKILL.md` mit **YAML-Frontmatter** definiert:

```yaml
---
name: my-skill
description: Kurze Beschreibung, was der Skill macht und wann man ihn nutzt.
---
# My Skill
Detaillierte Anweisungen für den Agenten.
## When to Use
- Nutze diesen Skill, wenn ...
## Instructions
- Schritt-für-Schritt-Anleitung
```

**Frontmatter-Felder (aus den Cursor Docs):**

| Feld | Pflicht | Beschreibung |
| ---- | ------- | ------------- |
| `name` | Ja | Skill-Kennung. Nur Kleinbuchstaben, Ziffern, Bindestriche. Muss mit dem Ordner-Namen übereinstimmen. |
| `description` | Ja | Was der Skill tut und wann er genutzt wird. Der Agent nutzt das für die Relevanz-Entscheidung. |
| `license` | Nein | Lizenzname oder Verweis auf Lizenzdatei. |
| `compatibility` | Nein | Anforderungen (System-Pakete, Netzwerk etc.). |
| `metadata` | Nein | Beliebige Key-Value-Metadaten. |
| `disable-model-invocation` | Nein | Wenn `true`: Skill wird **nur** bei explizitem Aufruf per `/skill-name` geladen. Der Agent wendet ihn nicht automatisch an. |

### Disabling automatic invocation (`disable-model-invocation`)

- **Standard:** Skills werden automatisch angewendet, wenn der Agent sie für relevant hält.
- **`disable-model-invocation: true`:** Der Skill verhält sich wie ein klassischer Slash-Befehl — er kommt **nur** in den Kontext, wenn ihr explizit `/skill-name` im Chat eingebt. Kein automatisches „Agent entscheidet“.

### Scripts in Skills

- Ordner **`scripts/`** kann ausführbaren Code enthalten (Bash, Python, JS …).
- In der `SKILL.md` mit **relativen Pfaden** vom Skill-Root referenzieren, z. B. `scripts/deploy.sh`.
- Der Agent liest die Anweisungen und führt die referenzierten Scripts beim Aufruf des Skills aus. Scripts sollten eigenständig sein, klare Fehlermeldungen liefern und Edge Cases abdecken.

### Optionale Ordner (Überblick)

| Ordner | Zweck |
| ------ | ----- |
| `scripts/` | Ausführbarer Code, den der Agent ausführen kann |
| `references/` | Zusätzliche Doku, bei Bedarf geladen |
| `assets/` | Statische Ressourcen (Templates, Bilder, Daten) |

`SKILL.md` schlank halten; Details in `references/` auslagern — dann lädt der Agent progressiv nur das Nötige.

### Skills anzeigen

- **Cursor Settings** öffnen (Cmd+Shift+J / Ctrl+Shift+J).
- Zu **Rules** wechseln.
- Skills erscheinen im Bereich **Agent Decides** (bzw. in der Skill-Liste).

Im Anschluss an diese Erklärung folgen die beiden **Demo-Skills** (Jira, Changeset) zum Durchgehen und für die Live-Demo.

## Kernbotschaft (in 60 Sekunden)

1. Skills reduzieren Prompt-Varianz und sichern Qualität teamweit.
2. Jira-Skill: Link zum Ticket → Script holt Daten → Codebase analysieren → Plan (oder direkt umsetzen).
3. Changeset-Skill: Branch mit `main` vergleichen → betroffene Packages ermitteln → `.changeset/*.md` mit korrektem Scope schreiben; beim Merge kein manuelles Changelog nötig.
4. Beide Skills liegen im Workshop unter `input/sections/05/` und können live durchgesprochen werden.

## Demo-Skills (eingepackt)

Diese Skills stammen aus **ms_frontend** und sind hier eingepackt:

- **Jira (Planning):** [Planning Jira Ticket Implementation](../../../input/sections/05/planning-jira-ticket-implementation/SKILL.md) — inkl. Script `scripts/get-jira-issue.sh` zum Ticket-Fetch.
- **Changeset:** [Create Changeset From Main Diff](../../../input/sections/05/create-changeset-from-main-diff/SKILL.md) — Branch vs `origin/main`, automatische Package-Scope-Erkennung.

Die Dateien liegen unter `input/sections/05/` und eignen sich für einen strukturierten Walkthrough (Links, Tabellen, Script-Nutzung).

## Was du konkret erklärst

1. **Konzept (an Docs):** Was sind Skills (portabel, versionierbar, actionable, progressive), wie sie funktionieren (Auto-Discovery, Agent entscheidet oder `/`-Aufruf), Skill-Verzeichnisse (Tabelle), Ordnerstruktur (Filetree minimal + mit scripts/references/assets), Frontmatter-Felder (Tabelle), `disable-model-invocation` kurz erklären, optionale Ordner (Tabelle), wo man Skills in Cursor sieht (Settings → Rules).
2. **Jira-Skill (zuerst):** Ablauf: Jira-Link/Ticket-Nummer → Script `get-jira-issue.sh` holt Ticket-Daten → Codebase analysieren → Plan (oder Implementierung). Beispiel für einen Skill mit `scripts/`.
3. **Changeset-Skill (danach):** Branch mit `main` vergleichen, betroffene Packages ableiten, `.changeset/*.md` anlegen/mergen — Changelog beim Merge automatisch.
4. **Optional (ein Satz):** Skills aus GitHub installierbar; `/migrate-to-skills` (Cursor 2.4) wandelt bestehende Rules/Commands in Skills um.

## Eure Demo-Skills (Reihenfolge für die Demo)

### 1. Jira Skill (primär)

**Zweck:** Aus einem Jira-Ticket (Link oder Nummer) einen umsetzbaren Plan erzeugen — Ticket-Daten per Script, Codebase-Analyse, optional Figma-MCP.

**Was der Skill macht:**
- Validiert Ticket-Nummer/URL
- Führt `scripts/get-jira-issue.sh` aus und parst die Antwort
- Optional: Figma-Links im Ticket auswerten (MCP)
- Korrigiert technische Referenzen anhand der echten Codebase
- Erstellt einen schrittweisen Plan (ohne Code zu schreiben, wenn reines Planning)

**Skill + Script im Repo:** [Planning Jira Ticket Implementation](../../../input/sections/05/planning-jira-ticket-implementation/SKILL.md), Script: `input/sections/05/planning-jira-ticket-implementation/scripts/get-jira-issue.sh`

**Demo-Prompt (Beispiel):**
```text
Create a plan for Jira ticket MOP-123. Fetch the ticket, analyze the codebase, and give me a step-by-step implementation plan.
```

### 2. Changeset Skill

**Zweck:** Änderungen des aktuellen Branch gegenüber `origin/main` in eine oder mehrere `.changeset/*.md`-Dateien gießen, mit korrektem Package-Scope — kein manuelles Changelog beim Merge.

**Was der Skill macht:**
- `git fetch origin main`, Diff und Log auswerten
- Pro geänderter Datei das zugehörige Package (über `package.json`) ermitteln
- Bump-Typ pro Package klären (`patch`/`minor`/`major`)
- Release-Notes formulieren und Datei anlegen bzw. in bestehende Changeset-Datei mergen

**Skill im Repo:** [Create Changeset From Main Diff](../../../input/sections/05/create-changeset-from-main-diff/SKILL.md)

**Demo-Prompt:**
```text
Create a changeset for my current branch changes. Compare against main, identify affected packages, and suggest bump types. Format as .changeset/*.md.
```

## Was du live in Cursor zeigst (8-Minuten-Ablauf)

1. **2:00 Erklärung & Präsentation:** Docs-Link zeigen ([Agent Skills](https://cursor.com/docs/skills)). Kurz durchgehen: Was sind Skills (Tabelle Portable/Version-controlled/Actionable/Progressive), Skill-Verzeichnisse (Tabelle), Ordnerstruktur (Filetree aus den Docs oder aus unserem Repo), Frontmatter-Felder (Tabelle), `disable-model-invocation` in einem Satz, optionale Ordner (Tabelle). Optional: Settings → Rules → wo Skills erscheinen.
2. **2:00 Jira-Skill:** Skill öffnen (`input/sections/05/planning-jira-ticket-implementation/SKILL.md`), Script-Pfad und `scripts/`-Ordner zeigen, Ablauf „Link → Fetch → Codebase → Plan“ durchgehen; optional einen Demo-Prompt ausführen.
3. **2:30 Changeset-Skill:** Skill öffnen (`input/sections/05/create-changeset-from-main-diff/SKILL.md`), Branch-vs-main und Package-Scope erklären; optional kurze Live-Demo.
4. **1:00 Invocation + Takeaway:** Automatisch vs. `/skill-name`, wann `disable-model-invocation: true`. „Skills standardisieren Workflows, reduzieren Prompt-Varianz. Nächste Section: MCP Small Demo.“

## Prompt-Bausteine für die Demo

**Jira-Plan:**
```text
Create a plan for Jira ticket MOP-123. Fetch the ticket with the script, analyze the codebase, and give me a step-by-step implementation plan. No code — plan only.
```

**Changeset:**
```text
Create a changeset for my current branch. Compare against origin/main, identify affected packages, suggest bump types, and write a .changeset/*.md file.
```

**Skill-Vergleich:**
```text
# Ohne Skill (Ad-hoc)
"Kannst du mir ein Changeset für meine Änderungen schreiben?"

# Mit Skill (Standardisiert)
Skill "create-changeset-from-main-diff" — weiß bereits: Branch vergleichen, Packages finden, Format einhalten.
```

## Mini-Snippet für Skill-Invocation

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
```

## Plan B (wenn Live-Trigger hängt)

1. Skill-Dateien direkt öffnen und Aufbau + Script-Referenz erklären.
2. Vorbereitete Changeset- oder Jira-Plan-Outputs als Backup zeigen.
3. Nur einen der beiden Skills live ausführen, den anderen nur anhand der SKILL.md durchgehen.

## Was die Audience nach Section 05 verstanden haben soll

- **Konzept (aus den Cursor Docs):** Was Skills sind (portabel, versionierbar, actionable, progressive), wo sie liegen (Skill-Verzeichnisse), wie die Ordnerstruktur aussieht (SKILL.md + optional scripts/references/assets), welche Frontmatter-Felder es gibt und was `disable-model-invocation` bewirkt.
- **Jira-Skill:** Link/Ticket → Script-Fetch → Codebase → Plan (oder Implementierung); Beispiel für einen Skill mit `scripts/`.
- **Changeset-Skill:** Branch vs main → Package-Scope → automatisches Changelog beim Merge.
- Die eingepackten Demo-Skills liegen unter `input/sections/05/`; die offizielle Doku unter [cursor.com/docs/skills](https://cursor.com/docs/skills).

## Doc-Referenzen (Web)

- [Agent Skills \| Cursor Docs](https://cursor.com/docs/skills) — Hauptreferenz für diese Section (Definition, Verzeichnisse, Format, Frontmatter, Scripts, optionale Ordner, Viewing, GitHub-Install, Migration).
- [Agent Skills Standard (agentskills.io)](https://agentskills.io/) — offener Standard, „Learn more“.

---

## Talk-Referenz (Sprechtext & Tiefe)

### Einstieg (~30s)

**Skills** sind das Team-Gedächtnis für wiederkehrende Workflows — portabel, versionierbar; der Agent wendet sie **automatisch** an oder ihr nutzt **`/skill-name`**. Heute: offizielle Doku + **Jira**- und **Changeset**-Skills aus diesem Repo.

### Abschluss (~30s)

Skills reduzieren **Prompt-Varianz**. **`disable-model-invocation: true`** = nur noch expliziter Slash-Command. Als Nächstes: **MCP**.

### Beat-Folge (8-Minuten-Takt)

| T | Beat | Was du sagst | Was du zeigst |
| --- | --- | --- | --- |
| ~2min | Konzept | Portable, version-controlled, actionable, progressive; Verzeichnisse; Frontmatter | [Agent Skills](https://cursor.com/docs/skills) |
| ~2min | Jira | Ticket → Script → Codebase → Plan | [planning-jira…/SKILL.md](../../../input/sections/05/planning-jira-ticket-implementation/SKILL.md) |
| ~2.5min | Changeset | Branch vs `origin/main` → Packages → `.changeset/*.md` | [create-changeset…/SKILL.md](../../../input/sections/05/create-changeset-from-main-diff/SKILL.md) |
| ~1min | Invocation | Auto vs. `/skill-name`; optional Settings → Rules | UI oder nur erklären |

### Live-Demo Schritt für Schritt

1. Docs Skills **30s**.
2. **Jira SKILL.md** öffnen — Frontmatter, `scripts/`; optional Demo-Prompt (API-Key).
3. **Changeset SKILL.md** — Diff-Logik; optional Live auf Branch.
4. Snippet **`disable-model-invocation: true`** zeigen.
5. Übergang **Section 06 MCP**.

### Zusätzliche Beispiel-Prompts (Referenz)

**Ad-hoc vs. Skill (Vergleich):**

```text
# Ohne Skill
"Kannst du mir ein Changeset für meine Änderungen schreiben?"

# Mit Skill
Use the create-changeset-from-main-diff skill: compare branch to main, detect packages, write .changeset/*.md.
```

**Mini-Frontmatter:**

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
```

### FAQ (wenn sie fragen)

| Frage | Kurzantwort |
| --- | --- |
| Skill vs. Rule? | **Rules** = dauerhaftes Verhalten; **Skills** = kapselte **Workflows** inkl. Scripts/Referenzen. |
| Global vs. Projekt? | `.cursor/skills` / `.agents/skills` vs. `~/.cursor/skills`. |

### Übergang zu Section 06

„**MCP** — Browser, Figma, Co. über kontrollierte Tools an den Agent.“

## To-dos (Section 05)

- [x] Jira- und Changeset-Skills aus ms_frontend unter `input/sections/05/` eingepackt (inkl. get-jira-issue.sh).
- [ ] Optional: Jira-Skill im echten Repo mit eigenem JIRA_API_KEY durchspielen.
- [ ] A/B-Prompts (Ad-hoc vs. Skill) und ggf. eine Vergleichsfolie finalisieren.
- [ ] Plan-B-Outputs vorab sichern.
