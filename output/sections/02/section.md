# Section 02 — Modi, Read-only vs. Edits & Settings-Sneak-Peek

**Vollständige Section-Referenz** (Inhalt + Sprechtext).  
**Kurz am Pult:** [presentation.md](presentation.md) · **Folien:** [slides.md](slides.md)

| Feld       | Wert                     |
| ---------- | ------------------------ |
| Section-ID | `02`                     |
| Owner      | `Dogan`                  |
| Zeit       | `7 Min`                  |
| Status     | `ready-for-presentation` |
| Kern-Demo  | `nein`                   |

## Navigation

- [Ablauf-Checkliste (Referent:innen)](presentation.md)
- [Folien (Audience)](slides.md)
- [Workshop Master](../../../Workshop.md)
- [Prev: Section 01](../01/section.md)
- [Next: Section 03](../03/section.md)

## Ziel dieser Section

- **Brücke nach Section 01:** In der Intro war viel auf einmal — das kommt im Talk **wieder**; hier geht es um **Modi** und einen **kurzen Blick in die Cursor-Settings**.
- Die **vier Modi** (Ask, Plan, Agent, Debug) mit **Alltags-Einordnung** (Default Agent, wann wechseln, **Shift+Tab**).
- **Settings-Sneak-Peek:** v. a. **Agents**-Tab (Guardrails, Web/Fetch, MCP, Sandbox) und **Indexing**; Rules/MCP/Hooks vertiefen wir später.
- **Übergang an Miguel** Richtung **erste Demo** / nächster Block (**Section 03** → **Section 04**).

## Erklärung & Präsentation (kompakt, an Cursor Docs angelehnt)

**Quellen:** [Agent](https://cursor.com/help/ai-features/agent), [Ask Mode](https://cursor.com/help/ai-features/ask-mode), [Plan Mode](https://cursor.com/docs/agent/plan-mode), [Prompting](https://cursor.com/docs/agent/prompting).

### Welchen Modus wann? (Einordnung fürs Publikum)

| Modus | Wofür (Kern) | Dateien ändern? (Grobeinteilung im Talk) |
| ----- | ------------ | ---------------------------------------- |
| **Ask** | Sparsam, schnell, **read-only**; einfache Fragen übers Projekt; nutzt u. a. **semantische Suche** | **Nein** |
| **Agent** | **Default** — „macht was“ (implizit/explizit); Umsetzung, Edits, Terminal | **Ja** |
| **Plan** | **Planung**, **Gegenfragen**; komplexe Aufgaben erst strukturieren — Demo später (**Section 04**) | Im Talk wie **Ask** eingeordnet: **read-only** / Klärung zuerst ([Plan Mode](https://cursor.com/docs/agent/plan-mode)) |
| **Debug** | Eher **underrated**; mehr Fokus auf **Logs**, **Hypothesen**, etwas „mehr Temperature“; kann **Dateien ändern** — oft **stärker** als Plan, wenn ihr **exzessiv mit Fehlern** arbeitet (anderes Systemprompt-Gefühl) | **Ja** |

**Wichtig live:** Viele starten direkt im **Agent**-Modus. Wenn ihr **nur Fragen** stellt und **keine** Dateien oder Konfigs geändert haben wollt → **Modus wechseln** (z. B. **Ask**).

**Faustregel:** Passender Modus statt „immer Agent“. Unklarheit / nur Verständnis → **Ask**. Komplex + erst klären → **Plan**. Klar bauen → **Agent**. Fokus Fehler/Logs → **Debug**.

### Modus wechseln

- **Mode-Picker** im Chat/Agent-Panel (Dropdown).
- **Shift+Tab** — durch die Modi rotieren (im Dry-Run so gezeigt).
- Bei Themenwechsel oft **neuer Chat** für sauberen Kontext.

### Cursor Settings — Sneak Peek (kurz)

*Live: **Cursor Settings** öffnen und die Tabs **benennen** — nicht alles vertiefen.*

| Bereich | Was ihr erwähnt |
| ------- | ----------------- |
| **General** | eher **Look**, **Notifications**, allgemeine Preferences |
| **Agents** | **Herzstück** für euch: was passiert bei **Shortcuts** / Agent-Verhalten; **MCP**, **Allowlist**, **Kommandos**, **Fetch/Web** — was darf der Agent im Netz? **Dateien ignorieren oder explizit erlauben**; **Sandbox**; läuft **lokal** auf dem Rechner? |
| **Modell** | wie in Section 01 (**⌘⇧/**) — z. B. **Auto** vs. konkretes Modell (Dry-Run: z. B. **Codex** wählen) |
| **Cloud Agents** | kurz verweisen (schon in Section 01 angerissen, falls relevant) |
| **Plugins** | im Prinzip **Skills**, **Rules**, **Agents**, **MCPs** aus dem **Marketplace** — **Rules**, **MCP**, **Hooks** → später |
| **Indexing** | was Cursor **indiziert** — „**Brain**“ der Codebase; bei **großen Projekten** oder **neuen Dateien** sieht man **Sync**/Fortschritt — Hauptinput fürs Navigieren |

### Kurz: Prompting und Kontext

- Im Chat mit **@** gezielt Kontext anhängen: Dateien, Ordner, Symbole, Docs ([Prompting](https://cursor.com/docs/agent/prompting)). Wenn unsicher, welche Dateien relevant sind: weglassen, der Agent sucht selbst.
- **Bilder** per Paste oder Drag & Drop für UI/Debug; **Spracheingabe** per Mikrofon-Icon möglich.

Details zu Kontext und Rules kommen in **Section 03**; den vollständigen Workflow (Ask → Plan → Agent) zeigt **Section 04** live.

## Beispiele (nur Einordnung, keine Umsetzung)

| Situation | Modus | Kurz |
| --------- | ----- | ---- |
| Verstehen, Optionen, keine Änderung | Ask | Read-only, Rückfragen |
| Task klar und klein, Plan steht | Agent | Edits + Terminal |
| Mehrere Phasen, Risiko, Rollback wichtig | Plan | Erst Plan, dann Umsetzung |
| Unklares Fehlerbild, Laufzeit/Log nötig | Debug | Evidenz vor Fix |

- **Medien (ohne Code-Edits):** Ask/Agent gegenüberstellen ([ask.gif](../../../input/modes/ask/ask.gif), [agent.gif](../../../input/modes/agent/agent.gif)); Plan/Debug kurz einordnen ([plan.gif](../../../input/modes/plan/plan.gif), [todos.gif](../../../input/modes/plan/todos.gif), [plan-final.png](../../../input/modes/plan/plan-final.png), [debug.gif](../../../input/modes/debug/debug.gif)).

## Was du live in Cursor zeigst

1. **⌘I** — Chat/Composer; Agent-Panel **schließen**; **neuer Tab** (frischer Kontext wie im Dry-Run).
2. **⌘⇧/** — Modellwahl (z. B. **Auto** → konkretes Modell wie **Codex**); verbinden mit Section 01.
3. **Falle „immer Agent“:** Ihr wart direkt im **Agent**-Modus — wenn ihr **nur Fragen** wollt und **nichts** an Dateien/Konfigs ändern wollt → **Modus wechseln**.
4. **Vier Modi** nennen; **Shift+Tab** — live durchklicken.
5. **Read-only vs. Edits:** **Ask** + **Plan** (Klärung/Planung) vs. **Agent** + **Debug** (direkt ändern können) — wie im Talk formuliert.
6. **Cursor Settings:** **General** (Look/Notifications) vs. **Agents** (MCP, Allowlist, Web/Fetch, Ignore/Allow, Sandbox, lokal) — **Agents** als wichtigster Tab; **Indexing** + **Plugins**/Marketplace kurz.
7. Optional: **1 Szenario** „nur Fragen“ → **Ask** (wenn Zeit).
8. **Übergang:** an **Miguel** — **Section 03** (Context, Rules), dann **Section 04** (voller Flow / erste größere Demo).

## Was die Audience nach Section 02 verstanden haben soll

- **Agent** ist oft **Default** — bewusst **andere Modi** wählen, wenn nur **Lesen/Fragen** oder **Planung** nötig ist.
- **Ask**, **Plan**, **Agent**, **Debug** grob einordnen; **Shift+Tab** / Mode-Picker kennen.
- **Debug** als Option bei **viel Fehlerarbeit** / Logs / Hypothesen.
- **Settings:** vor allem **Agents**-Tab und **Indexing** als „Brain“ der Codebase; Rest kommt in späteren Sections.

## Prompt-Bausteine (nur zur Einordnung, nicht ausführen)

**Ask (keine Änderungen):**
```text
Use Ask mode. Do not edit files. Return 3 implementation options with trade-offs.
```

**Plan (Struktur vor Umsetzung):**
```text
Switch to Plan mode. Propose 3 phases; for each: files, checks, rollback idea.
```

**Debug (Evidenz vor Fix):**
```text
Use Debug mode. Propose 3 root-cause hypotheses and what instrumentation you would add before fixing.
```

## Doc-Referenzen (Web)

- [Agent (Help)](https://cursor.com/help/ai-features/agent) — Was Agent kann, Modus-Tabelle, Wechsel, Subagents, Checkpoints.
- [Ask Mode (Help)](https://cursor.com/help/ai-features/ask-mode) — Read-only, wann nutzen.
- [Plan Mode (Docs)](https://cursor.com/docs/agent/plan-mode) — Wie Plan Mode funktioniert, wann nutzen, von vorn anfangen.
- [Prompting (Docs)](https://cursor.com/docs/agent/prompting) — @-Mentions, Bilder, Sprache, Modellwechsel.
- [Debug Mode](https://cursor.com/docs/agent/debug-mode) — für Details zu Debug (evidenzbasiert, Instrumentierung).
- [Help: Indexing](https://cursor.com/help/customization/indexing.md) — zur Einordnung des **Indexing**-Tabs in den Settings.

---

## Talk-Referenz (Sprechtext & Tiefe)

*Orientierung am **Dry-Run-Transkript** (Dogan): Brücke von Section 01 („viel auf einmal“) → **Modi** + **Settings-Sneak-Peek** → **Miguel** / erste Demo.*

### Einstieg (~45s)

Section 01 hat **Basics** und **Usage** gedrückt — das ist absichtlich dicht; ihr werdet die Punkte **wiedersehen**. Jetzt: **Überblick Modi** und ein **kurzer Blick in die Einstellungen**. Danach **Miguel** für den nächsten Block und die **erste Demo**-Richtung.

### Abschluss (~30s)

**Ask** / **Plan** = eher **read-only** / Klärung & Planung; **Agent** / **Debug** können **direkt** am Code arbeiten. **Debug** lohnt bei **Fehlerarbeit** und **Logs**. **Settings → Agents** ist euer **Kontrollzentrum** für erlaubte Tools und Netz. Als Nächstes: **Miguel** — **Section 03**, dann **Section 04**.

### Beat-Folge (Referenz)

| Beat | Was du sagst | Was du zeigst |
| --- | --- | --- |
| 1 | **Vier Modi** — fast alle kennen **Agent** (Default); bei **nur Fragen** Modus wechseln. | Folie Tabelle |
| 2 | **Ask** — sparsam, schnell, read-only, semantische Suche, einfache Projektfragen. | Optional [ask.gif](../../../input/modes/ask/ask.gif) |
| 3 | **Agent** — Default, „macht was“, arbeitsfähig. | Optional [agent.gif](../../../input/modes/agent/agent.gif) |
| 4 | **Plan** — Planung, **Gegenfragen**, wichtig; **Demo später** (Section 04). | Optional Plan-Medien |
| 5 | **Debug** — etwas **underrated**; mehr **Temperature**/Hypothesen/**Logs**; oft **besser als Plan** bei viel Fehlerfokus. | Optional [debug.gif](../../../input/modes/debug/debug.gif) |
| 6 | **Shift+Tab** durch Modi; Read-only (**Ask**, **Plan**) vs. Edits (**Agent**, **Debug**). | Live |
| 7 | **Settings:** **General** vs. **Agents** (MCP, Allowlist, Fetch/Web, Ignore/Allow, Sandbox, lokal); **Modell**, **Cloud Agents**, **Plugins**/Marketplace; **Indexing** = Codebase-Brain. | Live Settings |
| 8 | `@` nur Stichwort → **Section 03**. | — |

**Merksatz (laut):** *„Nur fragen → nicht im Agent hängen bleiben. Shift+Tab. Agents-Tab checken.“*

### Live-Demo Schritt für Schritt

1. **⌘I** — Composer/Chat; Agent-UI **zu**; **neuer Editor-Tab**.
2. **⌘⇧/** — Modell (**Auto** / z. B. **Codex**).
3. Betonen: vorher warst du **direkt in Agent** — für **reine Fragen** → **Ask** (oder **Plan** zum Strukturieren).
4. **Shift+Tab** — Modi durchrotieren; kurz **ein Satz pro Modus**.
5. **Cursor Settings** öffnen — **General**, dann **Agents** (ausführlicher), **Indexing**, **Plugins** benennen; **Rules/MCP/Hooks** → später.
6. Optional: ein **Ask**-Beispiel (wenn Zeit).
7. **Übergang:** **Miguel** — **Section 03** (Context, Rules), **Section 04** (Plan-Flow live).

### FAQ (wenn sie fragen)

| Frage | Kurzantwort |
| --- | --- |
| Warum nicht immer Agent? | Weniger **unbeabsichtigte Edits**; Fragen und Exploration in **Ask** oft **günstiger** und **schneller**. |
| Plan vs. Debug? | **Plan** = strukturieren, **Gegenfragen**, Roadmap; **Debug** = **Hypothesen**, Logs, iterativ **Fehler jagen** — je nach Situation. |
| Ist Plan wirklich nie write? | Im **Talk** grob wie **read-only**/Klärung; **Ausführung** aus dem Plan → **Section 04** / Doku. |
| Was ist ⌘I bei mir? | Kann je nach **Keybinding** variieren — im Dry-Run: Chat öffnen; sonst **Mode-Picker** + **Shift+Tab** reichen. |

### Übergang zu Section 03 / Miguel

„**Basics**, **Chat** und **Modi** habt ihr auf dem Schirm — **jetzt Miguel** für **Context und Rules (Section 03)** und danach den **großen Live-Flow (Section 04)**.“
