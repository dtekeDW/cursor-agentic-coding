# Section 05 - Skills vs Subagents: Wiederverwendbarkeit mit klarer Delegation

| Feld | Wert |
| --- | --- |
| Section-ID | `05` |
| Owner | `Miguel` |
| Zeit | `8 Min` |
| Status | `ready-for-demo` |
| Kern-Demo | `ja` |

## Navigation
- [Workshop Master](../../../Workshop.md)
- [Prev: Section 04](../04/section.md)
- [Next: Section 06](../06/section.md)

## Ziel dieser Section
- Section 05 zeigt, wie ihr **Skills sauber definiert**, **Invocation bewusst steuert** und **Subagents nur dort einsetzt, wo Context-Isolation/Parallelisierung wirklich noetig ist**.

## Kernbotschaft (in 60 Sekunden)
1. Ein Skill macht aus einem guten Einzelprompt eine wiederholbare Team-Routine.
2. Skills koennen automatisch verwendet oder explizit mit `/skill-name` aufgerufen werden.
3. `disable-model-invocation: true` erzwingt explizite Nutzung (Slash-Command-Verhalten).
4. Subagents sind fuer komplexe, kontextlastige oder parallele Workstreams gedacht, nicht fuer jede Kleinigkeit.

## Was du konkret erklaerst
1. **Skill-Aufbau**: Ordner + `SKILL.md` mit Frontmatter (`name`, `description`), optional `scripts/`, `references/`, `assets/`.
2. **Invocation-Varianten**:
   - Standard: Agent entscheidet automatisch anhand von Kontext + Description.
   - Explizit: `/skill-name` im Chat.
   - Nur explizit: `disable-model-invocation: true`.
3. **Subagent-Rolle**: Eigener Context-Window, sinnvoll fuer laengere Recherche, Verifikation und parallele Streams.
4. **Praktischer Effekt**: Weniger Prompt-Varianz, klarere Ergebnisse, bessere Team-Adoption.

## Entscheidungsregel: Skill oder Subagent?
1. **Skill nehmen**, wenn die Aufgabe single-purpose und wiederholbar ist (z. B. standardisierte Analyse, Changelog, Format-Workflow).
2. **Subagent nehmen**, wenn viel Zwischenoutput entsteht, Context isoliert werden soll oder parallel gearbeitet wird.
3. **Nicht ueber-engineeren**: Fuer sehr kleine One-shot-Aufgaben reicht oft der Main-Agent ohne Zusatzstruktur.
4. **Merksatz**: Skill = Standardisieren, Subagent = Delegieren/Entlasten.

## Was du live in Cursor zeigst (8-Minuten-Ablauf)
1. **1:00 Framing**: Problem benennen: Ad-hoc-Prompting liefert je nach Formulierung stark schwankende Qualitaet.
2. **2:30 Skill-Definition zeigen**:
   - Wo Skills liegen (`.cursor/skills/` oder `.agents/skills/`),
   - Minimaler Frontmatter-Block (`name`, `description`),
   - `disable-model-invocation` als Schalter fuer expliziten Aufruf.
3. **2:30 A/B Invocation live**:
   - A: Natuerliche Aufgabe ohne Slash-Invoke (Agent darf Skill automatisch waehlen).
   - B: Gleiche Aufgabe mit explizitem `/skill-name`.
   - Kurz vergleichen: Konsistenz, Struktur, Rueckfragen.
4. **1:30 Subagent-Abgrenzung**:
   - Eine context-heavy Aufgabe nennen (z. B. grosse Repo-Recherche),
   - Zeigen, warum dafuer ein Subagent sinnvoller ist als ein einzelner Skill-Run.
5. **0:30 Takeaway + Bridge**:
   - "Wir steuern jetzt reproduzierbar, wann standardisiert wird und wann delegiert wird."
   - Uebergang zu Section 06 (dort folgen Security-Defaults, Secrets-Handling und Debug als Safety-Case).

## Prompt-Bausteine fuer die Demo
```text
Analyze this code change and return:
1) actionable findings with file references
2) risk level per finding
3) next concrete steps
Use relevant project skills if applicable.
```

```text
/my-skill Analyze this code change and return:
1) actionable findings with file references
2) risk level per finding
3) next concrete steps
```

```text
Use a subagent for this context-heavy task:
scan multiple modules in parallel, then return a concise synthesis only.
```

## Mini-Snippet fuer Skill-Invocation-Steuerung
```yaml
---
name: my-skill
description: Use for repeatable code-review summaries with file-based findings.
disable-model-invocation: true
---
```

## Plan B (wenn Live-Trigger haengt)
1. Vorbereitete Outputs fuer A/B-Vergleich als Backup zeigen (Auto vs `/skill-name`).
2. Nur den Entscheidungs-Teil live machen: "Warum hier Skill und dort Subagent?".
3. Zeit sparen: Snippet statt kompletter Datei zeigen.

## Was die Audience nach Section 05 verstanden haben soll
- Skills sind der Hebel fuer teamweite Konsistenz.
- Invocation ist steuerbar: automatisch, explizit oder explizit-erzwungen.
- Subagents loesen Context- und Parallelisierungsprobleme, nicht Standard-Routinen.
- Das Zusammenspiel reduziert Zufall und erhoeht Nachvollziehbarkeit.

## Doc-Referenzen (Web)
- [Skills](https://cursor.com/docs/skills)
- [Subagents](https://cursor.com/docs/subagents)
- [MCP](https://cursor.com/docs/mcp)

## To-dos (Section 05)
- [ ] Demo-Skill final auswaehlen und `name`/`description` auf euren Use Case scharf ziehen.
- [ ] A/B-Prompts finalisieren (Auto-Invocation vs explizit `/skill-name`) und 1 Vergleichsfolie vorbereiten.
- [ ] Ein kurzes Skill-Snippet mit `disable-model-invocation: true` als Copy-Paste bereitstellen.
- [ ] Ein klares Subagent-Beispiel definieren (context-heavy + parallel) fuer die 1:30-Min-Abgrenzung.
- [ ] Plan-B-Outputs vorab sichern und Sprecheraufteilung fuer 8 Minuten festlegen.
