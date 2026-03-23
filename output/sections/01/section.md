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

*Direkt nach dem Einstieg in die Section nutzen — dann unten die kompakten Stichpunkte für Details.*

### Einstieg (~45s)

Willkommen beim Agent — nicht als „noch ein Chat“, sondern als **gesteuerter Workflow**. Kurz zur Einordnung aus der Doku: Der Agent baut auf **[Instructions](https://cursor.com/docs/rules)**, **[Tools](https://cursor.com/docs/agent/overview#tools)** und dem gewählten **Modell** — ihr steuert mit euren Nachrichten (u. a. Queue vs. Immediate). In den nächsten Minuten: **was** das praktisch heißt, **wo** er läuft, **wie** ihr nachsteuert.

### Abschluss dieser Section (~30s)

**Merksatz für die Audience:** Agent-Arbeit ist kontrolliert — mit klarer Laufumgebung und mit **Queue vs. Immediate**, damit ihr entscheidet: erst fertig arbeiten lassen oder sofort eingreifen.

### Beat-Folge (Referenz)

| Beat | Was du sagst | Was du zeigst |
| --- | --- | --- |
| 1 | Laut Doku: **Instructions** + **Tools** + **Modell** — kein One-Shot-Chat; der Agent orchestriert viele Tool-Calls nacheinander. | Agent-Panel; optional [Agent Overview](https://cursor.com/docs/agent/overview) per Klick öffnen (Cursor / Browser). |
| 2 | **Tools (~30s, Stichworte):** u. a. **[Semantic Search](https://cursor.com/docs/agent/tools/search)** in der indexierten Codebase, Dateien lesen/schreiben, Shell, Web-Suche, **[Browser](https://cursor.com/docs/agent/tools/browser)** (Seite steuern, Screenshots), **Bildgenerierung** (Mockups o. Ä., speichert i. d. R. unter `assets/`). Details: [Overview → Tools](https://cursor.com/docs/agent/overview#tools), Tiefe: [Tool calling](https://cursor.com/learn/tool-calling). | Nur mündlich oder eine Doku-Seite kurz aufklappen. |
| 3 | **Wo** arbeitet der Agent? **Local** / **Worktree** / **Cloud** — Risiko & Kollaboration. | [work-tree.png](../../../input/ui-controls/work-tree.png) |
| 4 | **UI in 90s + `@`:** Context Window, Modell, Laufumgebung. Im Chat: **`@` tippen** → Vorschläge für **Datei** (z. B. `@components/Card.vue`), **Ordner**, **Code-Symbol**, **`@Docs`** (indexierte Doku), **`@Past Chats`**. Wenn ihr unsicher seid: `@` weglassen — der Agent sucht selbst ([Prompting](https://cursor.com/docs/agent/prompting)). | Composer: kurz `@` zeigen, eine Datei anpinnen. |
| 5 | **`@` vs. Browser-Tool:** `@` **bindet Kontext an die Nachricht** (Repo/Doku im Kontextfenster). Das **[Browser-Tool](https://cursor.com/docs/agent/tools/browser)** lässt den Agenten eine **echte Browser-Session steuern** (navigieren, klicken, Screenshot) — für **gezielte UI-/Live-Prüfung**, nicht nur „Link lesen“. Doku parallel lesen: **Cmd+Klick** auf `https://…` oder Simple Browser (optional). | Ein Satz Abgrenzung; kein Deep-Dive. |
| 6 | **Live-Steuerung:** `Enter` = Queue; `Cmd+Enter` / `Ctrl+Enter` = Immediate. | Zwei kurze Nachrichten. |
| 7 | Optional: **Bild-Input** (Paste/Drop) bzw. **Bildgenerierung**-Tool (Beat 2). | Kurz Paste/Drop zeigen. |

**Audience line (merken):** *„Queue lässt den Agent fertigarbeiten, Immediate korrigiert den Lauf sofort.“*

### Live-Demo Schritt für Schritt

1. Agent-Chat in einem kleinen Beispiel-Workspace öffnen.
2. **Context Window** und **Model Selection** zeigen — ein Satz je Control.
3. **Local / Worktree / Cloud** am Laufort zeigen.
4. Im Chat-Eingabefeld **`@`** tippen — eine **Datei** oder einen **Ordner** wählen; optional erwähnen: **`@Docs`**, Symbole ([Prompting](https://cursor.com/docs/agent/prompting)).
5. Nachricht mit **Enter** — laut: Queue nach aktuellem Schritt.
6. Mit **Cmd+Enter** kurze Korrektur — laut: Immediate.
7. Optional: Bild aus Zwischenablage einfügen (Input in den Chat).
8. Optional: **Cmd+Klick** auf [Agent Overview](https://cursor.com/docs/agent/overview) — Doku im Browser (oder Simple Browser) **parallel** zum Chat; das ist Lesen für euch — **nicht** dasselbe wie das **Browser-Tool** des Agenten (der steuert die Seite aktiv für Checks).

### FAQ (wenn sie fragen)

| Frage | Kurzantwort |
| --- | --- |
| Ist das nicht „nur Chat“? | Nein — Tools, Rules und Laufumgebung machen daraus einen **Arbeitsablauf** mit Ausführung und Kontrolle. |
| Wann Cloud vs. Local? | Local für schnelle Iteration; Cloud/Worktree für Isolation — Team-Policy beachten. |
| `@` vs. Browser-Tool? | **`@`** = Kontext in den Prompt pinnen. **Browser-Tool** = Agent führt eine Session auf einer echten Seite aus (Tests, Screenshots). |

### Übergang zu Section 02

„Als Nächstes ordnen wir die **vier Modi** ein — Ask, Plan, Agent, Debug — damit ihr wisst, **welches Werkzeug** ihr für welche Aufgabe wählt.“

---

## Feedback (Probe / Dry-Run)

*Nach einer Probe durchgehen — was behalten, was schärfen.*

- [ ] Timing passt (~6 Min)?
- [ ] Hook + 3 Anker sitzen?
- [ ] **Tools**-Stichworte (Semantic Search, Browser, Bildgen) im Zeitbudget?
- [ ] **`@`** im Composer kurz gezeigt (Datei/Ordner)?
- [ ] UI-90s + Medien flüssig?
- [ ] Queue / Immediate live klar?
- [ ] Optional Bild: ja/nein — Notiz: _________________________
- [ ] Sonstiges: _________________________

---

## Ziel dieser Section

- Section 01 gibt ein schnelles Betriebsmodell: was der Agent ist, wo er arbeitet und wie du ihn waehrend eines laufenden Tasks steuerst.

## Die 3 Anker fuer den Einstieg

1. **Was ist Agent-Arbeit?**
  - Kein normaler Chat: laut [Agent Overview](https://cursor.com/docs/agent/overview) aus **Instructions** (System + [Rules](https://cursor.com/docs/rules)), **Tools** (siehe unten) und dem gewählten **Modell** — plus eure Nachrichten (Queue / Immediate).
2. **Wo arbeitet der Agent?**
  - `Local` (aktueller Workspace), `Worktree` (lokale isolierte Umgebung), `Cloud` (separater Branch/Remote-Run).
3. **Wie steuerst du live nach?**
  - `Enter` = Queue (nach aktuellem Schritt), `Cmd+Enter` = Immediate (sofortiger Eingriff).

## Tools (kurz — laut Cursor Docs)

*Keine vollständige Liste; nur was im Talk erwähnenswert ist. Klickbare Links (im Cursor-Editor: **Cmd+Klick** / „Open Link“ → meist euer System-Browser).*

| Stichwort | Kurz | Doku |
| --- | --- | --- |
| **Semantic Search** | Suche nach Bedeutung in der **indexierten** Codebase | [Agent tools: Search](https://cursor.com/docs/agent/tools/search) |
| **Dateien / Shell / Web** | Lesen, Edits, Terminal, Web-Recherche | [Overview → Tools](https://cursor.com/docs/agent/overview#tools) |
| **Browser** | Seite steuern, klicken, Screenshots — für UI-Checks | [Browser tool](https://cursor.com/docs/agent/tools/browser) |
| **Bildgenerierung** | Bilder aus Text (z. B. Mockups); oft Ablage unter `assets/` | [Overview → Tools](https://cursor.com/docs/agent/overview#tools) |
| **Fundamentals** | Wie Tool-Calling funktioniert | [Tool calling (Learn)](https://cursor.com/learn/tool-calling) |

*Hinweis: Laut [Overview](https://cursor.com/docs/agent/overview) gibt es **kein festes Limit**, wie viele Tool-Calls der Agent in einem Task ausführen kann.*

## @-Mentions (Kontext im Chat)

*Kurz nach [Prompting agents](https://cursor.com/docs/agent/prompting). Vertiefung „Kontext bewusst steuern“ → [Section 03](../03/section.md).*

- Im Agent-Chat **`@` eingeben** — Cursor schlägt passende **Dateien**, **Ordner**, **Symbole** (Funktion, Klasse, …), **`@Docs`** (indexierte Doku; eigene Quellen über `@Docs` → *Add new doc*), **`@Past Chats`** vor.
- **Beispiele:** `@src/auth.ts`, `@packages/ui/components/`, `@getUserById`, `@Docs`.
- **Wenn ihr nicht wisst**, welche Dateien zählen: **`@` weglassen** — der Agent sucht über seine Tools selbst.
- **Cursor 2.0:** Explizite Einträge wie früher `@Web`, `@Git` usw. sind aus dem Kontextmenü entfernt; viel holt der Agent **automatisch** nach ([Prompting](https://cursor.com/docs/agent/prompting)).

### @-Kontext vs. Browser-Tool

| | `@` im Chat | [Browser-Tool](https://cursor.com/docs/agent/tools/browser) |
| --- | --- | --- |
| **Zweck** | Repo-/Doku-Inhalt **in den Prompt** legen | **Live-Seite** vom Agenten **steuern** (Klicks, Screenshots, UI prüfen) |
| **Wo** | Composer / Kontext | Echte Browser-Session im Auftrag des Agenten |
| **Parallel Doku lesen** | **Cmd+Klick** auf Links, optional Simple Browser | Zusätzlich möglich — unabhängig vom Tool |

## Was du live in Cursor zeigst

1. ***UI-Orientierung in 90 Sekunden**:*
  - *Context Window (woher der aktive Kontext kommt),*
  - *Modellauswahl,*
  - *Laufumgebung (*`Local` */* `Worktree` */* `Cloud`).
  - Medien: [context-window.png](../../../input/ui-controls/context-window.png), [model-selection.png](../../../input/ui-controls/model-selection.png), [work-tree.png](../../../input/ui-controls/work-tree.png)
2. **`@` im Composer:** kurz eine Datei oder einen Ordner anpinnen (siehe [Prompting](https://cursor.com/docs/agent/prompting)).
3. **Mini-Steuerung live**:
  - Eine Nachricht mit `Enter` (queued),
  - eine mit `Cmd+Enter` (immediate).
4. **Kurzsatz fuer die Audience**:
  - "Queue laesst den Agent fertigarbeiten, Immediate korrigiert den Lauf sofort."

## Optional bei Restzeit (30-45s)

- Bildinput kurz zeigen (`Cmd+V` / Drag-and-drop), damit klar ist: UI-Feedback und Fehlerscreenshots koennen direkt in den Prompt.

## Was die Audience nach Section 01 verstanden haben soll

- Agent-Arbeit ist ein kontrollierter Workflow, kein One-shot-Chat — aufgebaut aus Instructions, Tools und Modell ([Overview](https://cursor.com/docs/agent/overview)).
- Es gibt eine **Palette von Tools** (u. a. semantische Suche, Browser, Bildgenerierung), nicht „nur Text“.
- Laufumgebung ist eine Produktentscheidung (Local/Worktree/Cloud) mit direktem Einfluss auf Risiko und Kollaboration.
- Steuerung waehrend der Ausfuehrung ist Teil der Arbeit (`Enter` vs `Cmd+Enter`).
- Mit **`@`** kann man Dateien, Ordner, Symbole und Doku **gezielt in den Kontext** hängen — anders als das **Browser-Tool**, mit dem der Agent eine Seite **aktiv bedient**.

## Doc-Referenzen (Web)

- [Prompting agents](https://cursor.com/docs/agent/prompting) — @-Mentions, Bild, Sprache, Modell
- [Agent Overview](https://cursor.com/docs/agent/overview) — drei Säulen, Tools, Queue, Checkpoints
- [Semantic Search (Tool)](https://cursor.com/docs/agent/tools/search)
- [Browser (Tool)](https://cursor.com/docs/agent/tools/browser)
- [Tool calling fundamentals](https://cursor.com/learn/tool-calling)
- [Documentation Overview](https://cursor.com/docs)
- Medien: [context-window.png](../../../input/ui-controls/context-window.png) · [model-selection.png](../../../input/ui-controls/model-selection.png) · [work-tree.png](../../../input/ui-controls/work-tree.png)
