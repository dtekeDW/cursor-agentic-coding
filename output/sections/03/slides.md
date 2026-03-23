---
marp: true
paginate: true
footer: 'Cursor Agentic Coding — Section 03'
---

# Section 03 — Kontext steuern

## Rules · Context · Indexing

**Kernidee:** Bessere Antworten durch **richtigen Kontext** und **klare Regeln** — nicht nur längere Prompts.

[Vollständige Agenda](../../../Workshop.md)

---

# Vier Hebel (Merksätze)

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
| **AGENTS.md** | Einfache Markdown-Anweisungen im Repo |

---

# Hierarchie bei Konflikten

```text
AGENTS.md  →  einfache Repo-Guidance

Team Rules  →  Project Rules  →  User Rules
(org)            (repo)           (persönlich)

Konflikt:  Team > Project > User
```

---

# Context aktiv nutzen

- **Ohne** gezielte Auswahl: breite, unscharfe Antworten möglich
- **Mit** `@Datei` / `@Ordner`: Fokus auf das, was wirklich zählt
- **A/B-Test im Team:** gleiche Aufgabe einmal ohne, einmal mit `@` + Rules — Unterschied sichtbar machen

---

# Indexing (kurz)

- Ohne brauchbares **Indexing** findet der Agent Inhalte nicht zuverlässig
- Gute Prompts helfen wenig, wenn relevante Dateien „unsichtbar“ sind
- Mehr in der Doku: [Indexing (Help)](https://cursor.com/help/customization/indexing)

---

# Rules im UI

**Screenshot (Repo):** [rules.png](../../../input/ui-controls/rules.png)

---

# Takeaway

> Nicht mehr nur **mehr Prompt-Text** — sondern **besserer Kontext** und **klare Rules**.

**Als Nächstes — Section 04:** Plan-First von der Idee bis zur ersten Umsetzungsphase.

---

# Weiterführend

- [Rules](https://cursor.com/docs/rules)
- [Prompting Agents](https://cursor.com/docs/agent/prompting)
- [Context (Help)](https://cursor.com/help/customization/context)
- [Indexing (Help)](https://cursor.com/help/customization/indexing)
