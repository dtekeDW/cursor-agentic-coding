---
marp: true
paginate: true
footer: 'Cursor Agentic Coding — Section 01'
---

# Cursor Agentic Coding in Practice

## Section 01 — Einstieg: Der Agent

**Fragestellungen:** Was ist Agent-Arbeit? Wo läuft sie? Wie steuert ihr nach?

[Vollständige Agenda](../../../Workshop.md)

---

# Agent-Arbeit ist kein „normaler Chat“

- Laut [Cursor Agent Overview](https://cursor.com/docs/agent/overview): **Instructions**, **Tools**, **Modell**
- Ihr steuert mit **Nachrichten** (z. B. Queue mit Enter, sofort mit Cmd+Enter)

---

# Tools (Auszug)

| | |
| --- | --- |
| **Semantic Search** | Bedeutung in der Codebase |
| **Browser** | Seite steuern, Screenshots ([Doku](https://cursor.com/docs/agent/tools/browser)) |
| **Bilder** | Generierung z. B. für Mockups; oft unter `assets/` |

Mehr: [Overview → Tools](https://cursor.com/docs/agent/overview#tools) · [Tool calling](https://cursor.com/learn/tool-calling)

---

# Kontext mit `@` (Chat)

- **`@` tippen** → Vorschläge: **Datei**, **Ordner**, **Code-Symbol**, **`@Docs`**, **`@Past Chats`**
- Beispiele: `@auth.ts`, `@src/components/`, `@getUserById`
- Unsicher, was relevant ist? **`@` weglassen** — der Agent sucht selbst  
  ([Prompting agents](https://cursor.com/docs/agent/prompting))

**Nicht verwechseln:** **`@`** = Kontext **in den Prompt**. **[Browser-Tool](https://cursor.com/docs/agent/tools/browser)** = Agent **steuert eine echte Seite** (für UI-Checks).

*Mehr zu Kontext + Rules → [Section 03](../03/slides.md) (später im Talk).*

---

# Wo arbeitet der Agent?

| Laufumgebung | Bedeutung (kurz) |
| --- | --- |
| **Local** | Aktueller Workspace auf eurer Maschine |
| **Worktree** | Isolierte lokale Umgebung (Sandbox) |
| **Cloud** | Separater Lauf / Branch — z. B. für Remote oder getrennte Experimente |

→ Beeinflusst **Risiko**, **Isolation** und **Zusammenarbeit**

---

# Drei Dinge im UI (Orientierung)

1. **Context Window** — woher kommt der aktive Kontext fürs Modell?
2. **Modellauswahl** — welches Modell arbeitet gerade?
3. **Laufumgebung** — Local, Worktree oder Cloud

**Medien (zum Öffnen im Repo):**

- [Context Window](../../../input/ui-controls/context-window.png)
- [Model Selection](../../../input/ui-controls/model-selection.png)
- [Worktree / Laufumgebung](../../../input/ui-controls/work-tree.png)

---

# Nachsteuern während der Arbeit

| Aktion | Wirkung |
| --- | --- |
| **Enter** | Nachricht in die **Queue** — kommt nach dem aktuellen Schritt dran |
| **Cmd+Enter** (Mac) / **Ctrl+Enter** (Win) | **Sofort** — Eingriff in den laufenden Ablauf |

**Merksatz**

> Queue lässt den Agent fertigarbeiten — Immediate korrigiert den Lauf sofort.

---

# Bilder im Prompt

- Screenshots, UI-Fehler, Mockups: **Paste** (`Cmd+V`) oder **Drag & Drop**
- Das Modell sieht denselben visuellen Kontext wie ihr

---

# Nächster Teil

**Section 02:** Die vier Modi — **Ask**, **Plan**, **Agent**, **Debug** — und wann welcher Modus passt.

---

# Weiterführend (Cursor Docs)

- [Agent Overview](https://cursor.com/docs/agent/overview)
- [Documentation Overview](https://cursor.com/docs)
