---
marp: true
paginate: true
footer: 'Cursor Agentic Coding — Section 04'
---

# Section 04 — Plan-First

## Von der Idee zum freigegebenen Plan

**Kern:** Erst **Optionen** und **Entscheidung**, dann **kleine Phasen** — nicht sofort „alles bauen“.

[Vollständige Agenda](../../../Workshop.md)

---

# Was „Plan-First“ bedeutet

1. Keine große Umsetzung ohne **Optionen** und eure **Freigabe**
2. Jede Option: **betroffene Dateien**, **Risiko**, **Validation**
3. Gute Schritte sind **klein**, **prüfbar**, **zurücknehmbar**
4. Ergebnis: ein **freigegebener Mehrphasen-Plan** statt einer langen Wunschliste

---

# Typischer Ablauf (Überblick)

```text
Ask      →  Optionen + Trade-offs
   ↓
Plan     →  Phasen, Checks, Rollback-Ideen
   ↓
Freigabe →  (ihr)
   ↓
Agent    →  eine Phase umsetzen, dann prüfen
```

---

# Subagents (Konzept)

- Bei großen Aufgaben (z. B. **Frontend** + **Backend**) können **einzelne Plan-Todos** an **Subagents** gehen
- Jeder Subagent: **eigenes Context Window** — fokussierte Arbeit
- Danach Ergebnisse **zusammenführen**

---

# Beispiel-Aufgabe (Demo-Kontext)

Optionaler **sekundärer CTA** auf einer **Reservation Card** (oder vergleichbare kleine UI-Erweiterung im **Nuxt / Storybook / UI-Package**-Setup).

**Guard Rails im Repo:** `.cursor/rules` (und ggf. Skills) beachten.

---

# Prompt-Ideen (Struktur)

**Optionen (Ask, read-only):**

- Drei Optionen mit: Dateien, Risiko, einfachster Check — dann **eine** Option wählen

**Plan:**

- Drei **kleine Phasen**: Ziel, Dateien, Erfolgskriterium, **Rollback-Notiz**

**Umsetzung:**

- **Nur Phase 1** im Agent — danach Diff + kurze Validation

*(Längere Prompt-Vorlagen könnt ihr im Workshop-Repo oder von den Referent:innen erhalten.)*

---

# Plan B (wenn Live nicht glänzt)

- Einen **vorbereiteten Plan** zeigen und **gemeinsam** gegenlesen
- Lernziel bleibt: **Struktur vor großem Diff**

---

# Nächster Teil — Section 05

**Skills:** Wiederholbare Team-Workflows als Dateien — z. B. **Jira → Plan** und **Changeset aus Branch-Diff**.

---

# Weiterführend

- [Plan Mode](https://cursor.com/docs/agent/plan-mode)
- [Agent Prompting](https://cursor.com/docs/agent/prompting)
- [Agent Overview](https://cursor.com/docs/agent/overview)
