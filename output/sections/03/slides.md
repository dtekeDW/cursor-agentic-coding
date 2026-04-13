---
marp: true
paginate: true
footer: 'Cursor Agentic Coding — Section 03'
---

# Section 03 — Kontext steuern

## Rules · AGENTS.md · Context · Indexing

**Kernidee:** bessere Antworten durch **Kontext-Orchestrierung** und **klare Regeln**, nicht nur durch längere Prompts.

[Vollständige Agenda](../../../Workshop.md)

---

# Vier Hebel

1. **Rules** — dauerhaftes Verhalten (team- und projektweit)
2. **Context** — worauf das Modell **konkret** schaut (`@`, Auswahl)
3. **Indexing** — was im Projekt **auffindbar** ist
4. **Prompting** — aktiviert und fokussiert die drei Punkte darüber

---

# Arten von Rules

| Typ | Kurzbeschreibung |
| --- | --- |
| **Project Rules** (`.cursor/rules`) | Im Repo versioniert — Projekt-Standards |
| **User Rules** | Persönlich, accountweit |
| **Team Rules** | Organisation, zentral vorgegeben |
| **AGENTS.md** | Einfache Markdown-Guidance, auch in Unterordnern möglich |

---

# Cursor Ignore

Cursor sollte bestimmte Dateien wie z. B. `.env` ignorieren.
Über die `.cursorignore` (ähnlich wie `.gitignore`) lässt sich festlegen, welche Dateien von Cursor dauerhaft ignoriert und niemals in den LLM-Kontext aufgenommen werden.

---

# Regel-Hierarchie bei Konflikten

```text
Team Rules > Project Rules > User Rules
AGENTS.md ergänzt als leichtgewichtige Guidance.
```

---

# Erstellen von Regeln

/create-rule (SKILL)
Create a rule:
Every method should include a TSDoc comment, written in plain text without using `@param` or any other `@` annotations.

---

# Nested AGENTS.md (Folder-Kontext)

```text
project/
  AGENTS.md                # global
  frontend/
    AGENTS.md              # frontend-spezifisch
  backend/
    AGENTS.md              # backend-spezifisch
```

- Je tiefer im Ordner, desto spezifischer der Kontext.
- Sehr gut für Framework-/Domain-spezifische Guidance.

---

# Kontext aktiv steuern

- **Ohne** gezielte Auswahl: breite, unscharfe Antworten möglich
- **Mit** `@Datei` / `@Ordner`: Fokus auf das, was wirklich zählt
- **A/B live zeigen:** gleiche Aufgabe einmal ohne, einmal mit `@` + Rules

---

# Kontext-Orchestrierung im Alltag

1. Aufgabe kurz und präzise formulieren
2. `@`-Kontext gezielt anhängen (Datei/Ordner/Symbol)
3. Relevante Rule aktiv lassen oder nennen
4. Erst dann in Plan/Agent weitergehen

---

# Indexing (Prerequisite, kurz)

- Ohne brauchbares **Indexing** findet der Agent Inhalte nicht zuverlässig
- Gute Prompts helfen wenig, wenn relevante Dateien „unsichtbar“ sind
- Mehr in der Doku: [Indexing (Help)](https://cursor.com/help/customization/indexing)

---

# Rules im UI

**Screenshot (Repo):** [rules.png](../../../input/ui-controls/rules.png)

---

# Takeaway

> Nicht mehr Prompt-Menge, sondern **Kontext-Hierarchie + Rules**.

**Als Nächstes — Section 04:** Skills erklären (Struktur, Invocation, Beispiele).

---

# Weiterführend

- [Rules](https://cursor.com/docs/rules)
- [Prompting Agents](https://cursor.com/docs/agent/prompting)
- [Context (Help)](https://cursor.com/help/customization/context)
- [Indexing (Help)](https://cursor.com/help/customization/indexing)
