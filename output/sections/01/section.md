# Section 01 — Einstieg: Was ihr im Agent-Chat seht

**Diese Datei** ist die **vollständige Section-Referenz** (Ziele, Medien, Sprechtext, Live-Ablauf, FAQ).  
**Kurz-Checkliste am Pult:** [presentation.md](presentation.md) · **Folien fürs Publikum:** [slides.md](slides.md)


| Feld       | Wert                     |
| ---------- | ------------------------ |
| Section-ID | `01`                     |
| Owner      | `Dogan`                  |
| Zeit       | `8 Min`                  |
| Status     | `ready-for-presentation` |
| Kern-Demo  | `nein`                   |


## Navigation

- [Ablauf-Checkliste (Referent:innen)](presentation.md)
- [Folien (Audience)](slides.md)
- [Workshop Master](../../../Workshop.md)
- Prev: `-`
- [Next: Section 02](../02/section.md)

## Talk-Referenz (Sprechtext & Tiefe)

*Orientierung am **Dry-Run-Transkript** (Dogan): Zuerst **Einordnung VS Code + Cursor** und **Shortcuts**, dann **Live-Nachricht**, dann **Modell** und **Kontextfenster**, dann **@‑Kontext** (Mentions, Terminal, Diff). **Am Abschluss von Section 01** kurz die **Features** bündeln (**semantische Suche**, **Simple Browser** inkl. DOM ins Chat, **DevTools**, **Bildgenerierung**) und **Queue vs. Sofort** (**Enter** vs. **⌘Enter**) mit Alltagsszenarien.*

### Einstieg (~45s)

Mit Miguel begrüßen: Ihr wollt zeigen, was jenseits vom **reinen Chat** geht — **Workflows**, später **Demos**. Damit das sitzt, erst einmal **Basics**: was im **Interface** passiert und was **Modell**, **Kontextfenster** und **Mentions** bedeuten.

### Abschluss dieser Section (~60–90s)

1. **Feature-Recap (Stichwort-Runde):** **Semantische Suche** über die indexierte Codebase (Agent-Tool) — [Search](https://cursor.com/docs/agent/tools/search). **Simple Browser:** **⌘⇧P** → *Simple Browser* → URL — eingebetteter Browser; ihr könnt **DOM / Struktur gezielt** ins Chat geben (präziser als nur URL). **DevTools** im Simple Browser nutzbar. **Bildgenerierung** als Agent-Tool (z. B. Mockups) — Kurzverweis [Overview → Tools](https://cursor.com/docs/agent/overview#tools). *(Abgrenzung: **Browser-Tool** des Agenten = andere Session; Simple Browser = ihr steuert die Seite manuell und schickt Kontext.)*

2. **Queue-Messages („To-Do“-Kette):** Wenn der Agent läuft und euch **Zwischengedanken** kommen — oder ihr **Schritt für Schritt** nachreichen wollt — könnt ihr **Enter**: Nachricht landet in der **Queue**, sichtbar wie **offene Punkte**; erst wird der **aktuelle Prompt** zu Ende bearbeitet, dann die nächste Queue-Message. Sinnvoll z. B. bei **Test-Matrix**, Settings Stück für Stück, längeren Setups.

3. **Sofort eingreifen (⌘Enter):** Wenn etwas **falsch läuft** (falsches Package, falscher Ansatz beim Planen) — **nicht** queuen: **⌘Enter** (**Ctrl+Enter**) schickt **sofort**; der laufende Schritt wird **kurz unterbrochen**, eure Eingabe geht rein, es geht **weiter mit korrigiertem Kontext**. Im Alltag: oft **Sofort**, wenn beim Log etwas **auffällt**; **Queue**, wenn bewusst **hintereinander** abgearbeitet werden soll.

**Merksatz zum Mitnehmen:** Modell + Kontext + **`@`**; Features auf dem Schirm; **Enter = Queue**, **⌘Enter = Sofort**. Als Nächstes: **Modi** (Ask, Plan, Agent, Debug).

### Beat-Folge (Referenz) — Reihenfolge im Talk


| #   | Thema                         | Was du sagst (Kern)                                                                                                                                                                                                                                                                                                                                                         | Was du zeigst                                                                                                                              |
| --- | ----------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------ |
| 1   | Begrüßung & Ziel              | Tech Talk mit Miguel; mehr als Chat; Demos später; jetzt Interface-Basics.                                                                                                                                                                                                                                                                                                  | —                                                                                                                                          |
| 2   | **VS Code + Cursor**          | Cursor baut auf VS Code auf; **normale Editor-Shortcuts**; **⌘T** neuer Chat; **⌘E** Agent, **⌘B** Sidebar, **⌘⇧F** Suche.                                                                                                                                                                                                                                                  | Kurz UI                                                                                                                                    |
| 3   | **Live-Prompt**               | Eine einfache Frage (z. B. Projekt erklären, gern mit Tippfehler); Fokus: **Anzeigen neben der Antwort** (Modell, Kontext, Usage).                                                                                                                                                                                                                                          | Composer                                                                                                                                   |
| 4   | **Modellauswahl**             | **Herzstück:** **⌘⇧/** öffnet Auswahl; Vorauswahl unterschiedlich; **All Models**; API-Keys (Anthropic, Google, Azure); **Auto** oft token-günstiger; **Use Multiple Models** zum Ausprobieren; **Max** nur wenn in eurer Lizenz / sonst überspringen.                                                                                                                         | [model-selection.png](../../../input/ui-controls/model-selection.png)                                                                      |
| 5   | **Kontextfenster**            | Wie viel „Gedächtnis“ in Tokens; **Prozent / Rad** (*context used*); bei Füllstand: **committen, speichern, neue Session**; **Compaction** = Zusammenfassung + Neustart → Risiko für lange Multi-Feature-Chats.                                                                                                                                                             | [context-window.png](../../../input/ui-controls/context-window.png)                                                                        |
| 6   | **Bild & Voice**              | Bilder Paste/Drop; Spracheingabe — kurz, positiv.                                                                                                                                                                                                                                                                                                                           | Optional                                                                                                                                   |
| 7   | **`@` / Mentions**            | Dateien, **Ordner**, Symbole; **@Docs** (+ / Link); **@Past Chats**; Details + Rules → **Section 03**.                                                                                                                                                                                                                                                                      | [Context.png](../../../input/sections/01/Context.png), `@` öffnen                                                                           |
| 8   | **Terminal**                  | **`@Terminal`** / Output mitgeben statt Log abzuschreiben; Logs oft selbsterklärend.                                                                                                                                                                                                                                                                                        | Terminal + Mention                                                                                                                         |
| 9   | **Branch / Diff zu `main`**   | Im **Prompt** formulieren (Vergleich zu `main` / Production); kein `@Git` im Menü (Cursor 2.0); Agent nutzt Git/Shell; gut für **MR-Beschreibung**; Referenz-Branch ggf. konfigurierbar.                                                                                                                                                                                     | Kurz live oder erklärt                                                                                                                     |
| 10  | **Abschluss: Features**       | **Semantische Suche**; **Simple Browser** (**⌘⇧P**) — URL, **DOM/Struktur** ins Chat, **DevTools**; **Bildgenerierung** kurz; Link zu Agent-**Browser-Tool** als andere Variante.                                                                                                                                                                                         | Optional live: Command Palette → Simple Browser                                                                                              |
| 11  | **Queue vs. Sofort**          | **Enter** = **Queue** (To-Do-Liste, nacheinander); **⌘Enter** = **Sofort** — laufenden Schritt kurz **abbrechen**/unterbrechen, Korrektur rein. Wann was: Setup **queue**en; Fehler im Log → **Sofort**.                                                                                                                                                                      | Optional: Queue sichtbar machen; einmal **Enter**, einmal **⌘Enter** nennen                                                                  |
| 12  | **Optional: Wo läuft er?**    | **Local / Worktree / Cloud** — [work-tree.png](../../../input/ui-controls/work-tree.png); Rest der Tools ein Satz ([Overview](https://cursor.com/docs/agent/overview#tools)).                                                                                                                                                                                               | Stichwort oder Folie                                                                                                                       |


**Audience line (Kontext):** *„Wenn das Kontextfenster voll wird, startet Cursor neu zusammenzufassen — lange Ketten an Infos sind dann nicht garantiert noch drin.“*

### Live-Demo Schritt für Schritt

1. **⌘T** — neuer Chat.
2. **VS Code + Cursor** in einem Satz; **⌘E / ⌘B / ⌘⇧F** zeigen oder nennen.
3. Kurze Nachricht tippen (z. B. *What is this project about? Explain me like I'm 5.*).
4. **⌘⇧/** — Modellauswahl; **Auto**, optional **Multiple Models**; **Max** nur wenn relevant.
5. **Kontextfenster** — Prozent erklären; **Compaction** kurz.
6. Optional: **Bild** oder **Voice** erwähnen oder zeigen.
7. **`@`** — Menü: Datei, Ordner, Docs, Past Chats.
8. **Terminal** — als Kontextquelle.
9. **Diff zu `main`** — Prompt starten (wenn nicht auf `main`, sonst nur erklären).
10. **Abschluss:** **Semantische Suche** + **Simple Browser** (**⌘⇧P**), DOM/DevTools, **Bildgenerierung** — jeweils ein Satz.
11. **Queue vs. Sofort:** **Enter** (nacheinander) vs. **⌘Enter** (Eingriff / Korrektur).
12. Optional: **Laufort** (Local / Worktree / Cloud) ein Satz.
13. Übergang: **Section 02 — Modi**.

### FAQ (wenn sie fragen)


| Frage                     | Kurzantwort                                                                                         |
| ------------------------- | --------------------------------------------------------------------------------------------------- |
| Ist das nicht „nur Chat“? | Nein — **Modell + Kontextfenster + Tools**; gesteuerter Ablauf.                                     |
| Wann Cloud vs. Local?     | Team-Policy; kurz in optionaler Zeile oder Section 04/05.                                           |
| `@` vs. Browser-Tool?     | **`@`** = Kontext im Prompt. **Browser-Tool** = Agent steuert eine echte Seite. **Simple Browser** = ihr öffnet die Seite (**⌘⇧P**), könnt DOM/DevTools nutzen und Struktur ins Chat geben. |
| Enter vs. ⌘Enter?       | **Enter** = **Queue** (nächste Nachricht wartet). **⌘Enter** = **sofort** senden, oft mit Kurz-Abbruch des laufenden Schritts. |
| Diff zu `main`?           | **Im Prompt** beschreiben; Agent nutzt Git über Tools — kein `@Git` im Mention-Menü (Cursor 2.0).   |


### Übergang zu Section 02

„Als Nächstes die **vier Modi** — Ask, Plan, Agent, Debug — und wann ihr welchen nehmt.“

---

## Feedback (Probe / Dry-Run)

- [ ] Timing (~8 Min)?
- [ ] Reihenfolge sitzt: VS Code → Live → Modell → Kontext → `@` → Terminal → Diff → **Abschluss Features + Queue** → optional Laufort?
- [ ] [Context.png](../../../input/sections/01/Context.png) / Modell-Screenshot aktuell?
- [ ] Compaction / Kontext-% verständlich?
- [ ] Sonstiges: _________________________

---

## Ziel dieser Section

- Orientierung im **Agent-Chat**: Cursor vs. VS Code, **Shortcuts**, **Modellwahl**, **Kontextfenster**.
- **@‑Kontext**: Dateien, Ordner, Docs, Past Chats, Terminal, Diff zu `main` (per Prompt).
- **Abschluss:** **Features** (Suche, Simple Browser + DOM, DevTools, Bildgenerierung) und **Queue vs. Sofort** (**Enter** / **⌘Enter**) mit kurzen Nutzungsszenarien.
- Optional: **Laufort** (Local / Worktree / Cloud) als Anker für spätere Sections.

## Die 3 Anker (nach Dry-Run)

1. **Modell** — pro Lauf wählbar (**⌘⇧/**); Auto & ggf. Multiple Models.
2. **Kontextfenster** — begrenztes „Gedächtnis“; bei Druck neue Session / committen.
3. **`@`** — gezielt Kontext reingeben (inkl. Terminal, Diff per Prompt).

## Kontext im Chat (`@`) — Detailtabelle

*Vertiefung Rules / Indexing → [Section 03](../03/section.md). Siehe [Prompting agents](https://cursor.com/docs/agent/prompting).*

**Medien:** [@-Kontext / Composer](../../../input/sections/01/Context.png)


| Was                         | Kurz                                                                                         |
| --------------------------- | -------------------------------------------------------------------------------------------- |
| **Datei / Ordner**          | `@pfad/zur/Datei.ts`, `@src/components/`                                                     |
| **Code-Symbol**             | z. B. `@getUserById`                                                                         |
| **Dokumentation**           | **`@Docs`** — auch eigene Quellen (*Add new doc* / **+**)                                    |
| **Verlauf**                 | **`@Past Chats`**                                                                            |
| **Branch / Diff zu `main`** | Im **Prompt** formulieren; Agent nutzt **Git/Shell** (kein `@Git` im Menü, Cursor 2.0)       |
| **Terminal**                | **`@Terminal`** / Output mitgeben — praktisch für Logs                                       |
| **Browser**                 | **Separat:** [Browser-Tool](https://cursor.com/docs/agent/tools/browser) — echte Seiten-Session |


- Unsicher, was anpinnen? **`@` weglassen** — Agent sucht selbst ([Prompting](https://cursor.com/docs/agent/prompting)).

## Tools (kurz — optional am Ende der Section)


| Stichwort                 | Kurz                              | Doku                                                             |
| ------------------------- | --------------------------------- | ---------------------------------------------------------------- |
| **Semantic Search**       | Bedeutung in indexierter Codebase | [Search](https://cursor.com/docs/agent/tools/search)             |
| **Dateien / Shell / Web** | Lesen, Edits, Terminal, Web       | [Overview → Tools](https://cursor.com/docs/agent/overview#tools) |
| **Browser (Agent)**       | Agent steuert Seite, Screenshots  | [Browser tool](https://cursor.com/docs/agent/tools/browser)      |
| **Simple Browser (Editor)** | **⌘⇧P** → *Simple Browser* — URL, **DOM** selektieren, **DevTools** | VS Code / Cursor eingebettet                                    |
| **Bildgenerierung**       | z. B. Mockups → oft `assets/`     | [Overview → Tools](https://cursor.com/docs/agent/overview#tools) |
| **Fundamentals**          | Tool-Calling                      | [Learn](https://cursor.com/learn/tool-calling)                   |


### @-Kontext vs. Browser-Tool


|                         | `@` im Chat                              | [Browser-Tool](https://cursor.com/docs/agent/tools/browser) |
| ----------------------- | ---------------------------------------- | ----------------------------------------------------------- |
| **Zweck**               | Repo/Doku/Chat-Verlauf **in den Prompt** | **Live-Seite** vom Agenten **bedienen**                     |
| **Parallel Doku / Seite** | **Cmd+Klick**; **⌘⇧P** → *Simple Browser* + URL — **DOM/DevTools**, Auswahl ins Chat | Zusätzlich zum Agent-**Browser-Tool** möglich                |

## Wo der Agent läuft (optional)


| Laufumgebung | Kurz                          |
| ------------ | ----------------------------- |
| **Local**    | Euer Workspace                |
| **Worktree** | Isolierte lokale Sandbox      |
| **Cloud**    | Separater Lauf / Branch       |

**Medien:** [work-tree.png](../../../input/ui-controls/work-tree.png)

## Nachsteuern: Queue vs. Sofort


| Aktion                       | Wirkung |
| ---------------------------- | ------- |
| **Enter**                    | **Queue** — Nachricht wartet; wirkt wie **To-Do**; nach Abschluss des aktuellen Prompts wird **nacheinander** weitergearbeitet. |
| **⌘Enter** / **Ctrl+Enter** | **Sofort** — Eingabe geht **direkt** (ohne Queue); laufender Schritt wird **kurz unterbrochen**, Kontext wird mit eurer Korrektur **fortgesetzt**. |

**Wann was:** Langes Setup oder **Test-Matrix** Stück für Stück → **Queue** sinnvoll. Im Log **merkt ihr: falscher Stack / falsches Package** → **⌘Enter** und **sofort** korrigieren.

## Optional bei Restzeit

- Bild Paste/Drop (`⌘V` / Drag-and-drop).
- **Cmd+Klick** Doku parallel — nicht dasselbe wie Agent-**Browser-Tool**.
- **⌘⇧P** → *Simple Browser* kurz zeigen, wenn der Abschluss schon straff war.

## Was die Audience nach Section 01 verstanden haben soll

- **Cursor** nutzt VS-Code-Vertrautes; **Agent** und **Modell** sind das Steuerungszentrum (**⌘⇧/**).
- **Kontextfenster** ist endlich; **Compaction** kann Informationen aus langen Chats ausdünnen.
- Mit **`@`** referenziert ihr Dateien, Ordner, Docs, Past Chats und Terminal; **Diff zu `main`** formuliert ihr im Prompt.
- **Semantische Suche**, **Simple Browser** (**⌘⇧P**) mit **DOM/DevTools**, **Bildgenerierung** — kurz benannt; Unterschied zu Agent-**Browser-Tool**.
- **Queue** (**Enter**) vs. **Sofort** (**⌘Enter**) — wann ihr was nehmt.
- Optional: **Laufort** (Local / Worktree / Cloud).

## Doc-Referenzen (Web)

- [Prompting agents](https://cursor.com/docs/agent/prompting)
- [Agent Overview](https://cursor.com/docs/agent/overview)
- [Semantic Search](https://cursor.com/docs/agent/tools/search) · [Browser](https://cursor.com/docs/agent/tools/browser) · [Tool calling](https://cursor.com/learn/tool-calling)
- [Documentation Overview](https://cursor.com/docs)
- **Section 01 Medien:** [Context.png (@-Menü)](../../../input/sections/01/Context.png) · [context-window.png](../../../input/ui-controls/context-window.png) · [model-selection.png](../../../input/ui-controls/model-selection.png) · [work-tree.png](../../../input/ui-controls/work-tree.png)
