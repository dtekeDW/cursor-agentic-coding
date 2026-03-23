# Section 01 — Einstieg: Was ist der Agent und wie steuerst du ihn?

**Diese Datei** ist die **vollständige Section-Referenz** (Ziele, Medien, Sprechtext, Live-Ablauf, FAQ).  
**Kurz-Checkliste am Pult:** [presentation.md](presentation.md) · **Folien fürs Publikum:** [slides.md](slides.md)

| Feld       | Wert                     |
| ---------- | ------------------------ |
| Section-ID | `01`                     |
| Owner      | `Dogan`                  |
| Zeit       | `6 Min`                  |
| Status     | `ready-for-presentation` |
| Kern-Demo  | `nein`                   |

## Navigation

- [Ablauf-Checkliste (Referent:innen)](presentation.md)
- [Folien (Audience)](slides.md)
- [Workshop Master](../../../Workshop.md)
- Prev: `-`
- [Next: Section 02](../02/section.md)

## Talk-Referenz (Sprechtext & Tiefe)

*Direkt nach dem Einstieg in die Section nutzen — **Roter Faden:** erst **Chat-Kontext (`@` / Session)**, dann **Tools**, dann **Laufumgebung & UI**, dann **Queue / Immediate**.*

### Einstieg (~45s)

Willkommen beim Agent — nicht als „noch ein Chat“, sondern als **gesteuerter Workflow**. Aus der Doku: **[Instructions](https://cursor.com/docs/rules)**, **[Tools](https://cursor.com/docs/agent/overview#tools)** und **Modell** — plus eure **Nachrichten** und der **Kontext**, den ihr gezielt anpinnt. **Zuerst** schauen wir, **was ihr dem Agenten in die Session legt** (`@`, Doku, Verlauf) — **danach**, welche **Tools** er selbst ausführt (Suche, Shell, **Browser**, …). Dann: **wo** er läuft und **wie** ihr mit Queue vs. Immediate nachsteuert.

### Abschluss dieser Section (~30s)

**Merksatz:** Agent-Arbeit ist kontrolliert — **Kontext bewusst setzen**, **Laufumgebung** wählen, **Queue vs. Immediate** nutzen.

### Beat-Folge (Referenz) — Reihenfolge im Talk

| # | Thema | Was du sagst (Kern) | Was du zeigst |
| --- | --- | --- | --- |
| 1 | Rahmen | **Instructions + Tools + Modell**; viele Tool-Calls pro Task möglich ([Overview](https://cursor.com/docs/agent/overview)). | Agent-Panel |
| 2 | **Chat-Kontext / `@`** | Mit **`@`** pinnt ihr **Dateien**, **Ordner**, **Code-Symbole**, **`@Docs`** (fremde + **eigene** Doku über *Add new doc*), **`@Past Chats`**. **Branch / Diff zu `main`:** seit Cursor 2.0 kein `@Git` mehr im Menü — stattdessen **klar im Prompt** z. B. „Vergleiche meinen Branch mit `main` / zeig das Diff“; der Agent nutzt **Git/Shell** als Tool. **Terminal:** laufende Befehle steuert der Agent über das **Shell-Tool**; ihr pinnt mit `@` eher **Dateien/Ordner**, die dazu passen. | Screenshot/Beispiel: [Context.png](../../../input/sections/01/Context.png) — `@`-Menü im Composer; live kurz `@` öffnen |
| 3 | **Tools (kurz)** | Semantic Search, Read/Edit, **Shell**, Web, **[Browser-Tool](https://cursor.com/docs/agent/tools/browser)** (Seite steuern), Bildgenerierung … | [Overview → Tools](https://cursor.com/docs/agent/overview#tools) |
| 4 | **Wo** | **Local / Worktree / Cloud** — Risiko & Zusammenarbeit. | [work-tree.png](../../../input/ui-controls/work-tree.png) |
| 5 | **UI** | Context Window, Modell, Laufumgebung (~90s). | [context-window.png](../../../input/ui-controls/context-window.png), [model-selection.png](../../../input/ui-controls/model-selection.png) |
| 6 | **`@` vs. Browser-Tool** | `@` = Kontext **in den Prompt**; Browser-Tool = Agent **bedient eine echte Seite** (UI-Checks). | Ein Satz |
| 7 | **Queue / Immediate** | `Enter` vs. `Cmd+Enter` / `Ctrl+Enter`. | Zwei kurze Nachrichten |
| 8 | Optional | Bild Paste/Drop; Bildgenerierung (Tool). | Kurz |

**Audience line:** *„Queue lässt den Agent fertigarbeiten, Immediate korrigiert den Lauf sofort.“*

### Live-Demo Schritt für Schritt

1. Agent-Chat öffnen.
2. **`@` im Composer:** Menü zeigen — **Datei**, **Ordner**, **Symbol**, **`@Docs`**, **`@Past Chats`**; optional Screenshot [Context.png](../../../input/sections/01/Context.png) einblenden.
3. **Satz zu Branch/Diff:** „Diff zu `main` macht ihr per **Prompt**, nicht über ein altes `@Git` — der Agent holt sich das über Tools.“
4. **Tools in einem Satz** verbinden: danach nutzt der Agent z. B. **Shell** / **Suche** / **Browser** selbst.
5. **Local / Worktree / Cloud** zeigen.
6. **Context Window**, **Modellauswahl** — je ein Satz.
7. **Enter** (Queue) und **Cmd+Enter** (Immediate).
8. Optional: Bild Paste/Drop; optional **Cmd+Klick** [Overview](https://cursor.com/docs/agent/overview) parallel lesen (nicht = Browser-Tool).

### FAQ (wenn sie fragen)

| Frage | Kurzantwort |
| --- | --- |
| Ist das nicht „nur Chat“? | Nein — **Kontext + Tools + Modell** — orchestrierter Ablauf. |
| Wann Cloud vs. Local? | Iteration vs. Isolation — Team-Policy. |
| `@` vs. Browser-Tool? | **`@`** = Kontext pinnen. **Browser-Tool** = Agent steuert eine Session auf der Seite. |
| Diff zu `main`? | **Prompt** — kein `@Git` im `@`-Menü mehr (Cursor 2.0); Agent nutzt Git über Tools. |

### Übergang zu Section 02

„Als Nächstes die **vier Modi** — Ask, Plan, Agent, Debug.“

---

## Feedback (Probe / Dry-Run)

- [ ] Timing (~6 Min)?
- [ ] **Reihenfolge** sitzt: `@`/Kontext → Tools → Wo → UI → Queue?
- [ ] [Context.png](../../../input/sections/01/Context.png) sichtbar / durch echten Screenshot ersetzt?
- [ ] Branch/Diff-Erklärung kurz und klar?
- [ ] Queue / Immediate live?
- [ ] Sonstiges: _________________________

---

## Ziel dieser Section

- Schnelles Betriebsmodell: Agent, Kontext (`@`), Tools, Laufumgebung, Nachsteuerung.

## Die 3 Anker fuer den Einstieg

1. **Was ist Agent-Arbeit?** — [Overview](https://cursor.com/docs/agent/overview): **Instructions**, **Tools**, **Modell** + eure Nachrichten & **Kontext** (`@`).
2. **Wo arbeitet der Agent?** — `Local`, `Worktree`, `Cloud`.
3. **Wie steuerst du live nach?** — `Enter` = Queue, `Cmd+Enter` = Immediate.

## Kontext im Chat (`@`) — vor den Tools durchgehen

*Siehe [Prompting agents](https://cursor.com/docs/agent/prompting). Vertiefung Rules/A/B → [Section 03](../03/section.md).*

**Medien:** [@-Kontext / Composer](../../../input/sections/01/Context.png) (`input/sections/01/Context.png` — Platzhalter durch euren Screenshot ersetzen)

| Was | Kurz |
| --- | --- |
| **Datei / Ordner** | `@pfad/zur/Datei.ts`, `@src/components/` |
| **Code-Symbol** | z. B. `@getUserById` |
| **Dokumentation** | **`@Docs`** — auch **eigene** Quellen (*Add new doc*) |
| **Verlauf** | **`@Past Chats`** |
| **Branch / Diff zu `main`** | Nicht per `@Git` im Menü (Cursor 2.0) — **im Prompt** formulieren; Agent nutzt **Git/Shell** |
| **Terminal / Befehle** | Agent führt **Shell** aus (Tool); Kontext mit `@` auf relevante Dateien pinnen |
| **Browser** | **Separat:** [Browser-Tool](https://cursor.com/docs/agent/tools/browser) steuert eine Seite — nicht dasselbe wie `@` |

- Unsicher, was anpinnen? **`@` weglassen** — Agent sucht selbst ([Prompting](https://cursor.com/docs/agent/prompting)).

## Tools (kurz — nach dem Chat-Kontext)

| Stichwort | Kurz | Doku |
| --- | --- | --- |
| **Semantic Search** | Bedeutung in indexierter Codebase | [Search](https://cursor.com/docs/agent/tools/search) |
| **Dateien / Shell / Web** | Lesen, Edits, Terminal, Web | [Overview → Tools](https://cursor.com/docs/agent/overview#tools) |
| **Browser** | Seite steuern, Screenshots | [Browser tool](https://cursor.com/docs/agent/tools/browser) |
| **Bildgenerierung** | z. B. Mockups → oft `assets/` | [Overview → Tools](https://cursor.com/docs/agent/overview#tools) |
| **Fundamentals** | Tool-Calling | [Learn](https://cursor.com/learn/tool-calling) |

*Kein festes Limit an Tool-Calls pro Task ([Overview](https://cursor.com/docs/agent/overview)).*

### @-Kontext vs. Browser-Tool

| | `@` im Chat | [Browser-Tool](https://cursor.com/docs/agent/tools/browser) |
| --- | --- | --- |
| **Zweck** | Repo/Doku/Chat-Verlauf **in den Prompt** | **Live-Seite** vom Agenten **bedienen** |
| **Parallel Doku lesen** | **Cmd+Klick**, optional Simple Browser | Zusätzlich möglich |

## Was du live in Cursor zeigst

1. **`@`-Menü / Kontext:** Composer + optional [Context.png](../../../input/sections/01/Context.png).
2. **Kurz Tools** benennen (nach dem `@`-Block).
3. **UI-Orientierung (~90s):** Context Window, Modell, Laufumgebung — [context-window.png](../../../input/ui-controls/context-window.png), [model-selection.png](../../../input/ui-controls/model-selection.png), [work-tree.png](../../../input/ui-controls/work-tree.png).
4. **Mini-Steuerung:** `Enter` / `Cmd+Enter`.
5. **Kurzsatz Audience:** Queue vs. Immediate.

## Optional bei Restzeit

- Bild Paste/Drop (`Cmd+V` / Drag-and-drop).

## Was die Audience nach Section 01 verstanden haben soll

- Agent = Instructions + Tools + Modell; **Kontext** steuert ihr u. a. mit **`@`** (Datei, Ordner, Docs, Past Chats); **Diff/Branch** per **Prompt**; **Browser-Tool** ist zusätzlich für **UI auf der echten Seite**.
- Tool-Palette (Suche, Shell, Browser, …) ergänzt den Chat.
- Laufumgebung: Local / Worktree / Cloud.
- Queue vs. Immediate.

## Doc-Referenzen (Web)

- [Prompting agents](https://cursor.com/docs/agent/prompting)
- [Agent Overview](https://cursor.com/docs/agent/overview)
- [Semantic Search](https://cursor.com/docs/agent/tools/search) · [Browser](https://cursor.com/docs/agent/tools/browser) · [Tool calling](https://cursor.com/learn/tool-calling)
- [Documentation Overview](https://cursor.com/docs)
- **Section 01 Medien:** [Context.png (@-Menü)](../../../input/sections/01/Context.png) · [context-window.png](../../../input/ui-controls/context-window.png) · [model-selection.png](../../../input/ui-controls/model-selection.png) · [work-tree.png](../../../input/ui-controls/work-tree.png)
