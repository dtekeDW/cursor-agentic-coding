# Cursor Agentic Coding in Practice

## Section 01 — Einstieg: Chat-Oberfläche & Kontext

**Heute:** mehr als nur Chat — Workflows, Demos — zuerst **Basics:** was ihr im Interface seht und was es bedeutet.

[Workshop.md — Agenda](../../../Workshop.md)

[Section 02 — slides.md](../02/slides.md)

**Nächste Section:** **Ask**, **Plan**, **Agent**, **Debug** — wann welcher Modus?

---

# Section 01 — Reihenfolge (Roter Faden)

1. **VS Code + Cursor** — gleiche Basis, Cursor-Layer & Shortcuts (**⌘T**, **⌘E**, …)
2. **Live-Prompt** — eine Nachricht; Fokus auf **UI** neben der Antwort (Modell, Kontext, Usage)
3. **Modellauswahl** (**⌘⇧/**) — Auto, Multiple Models, API-Keys …
4. **Kontextfenster** — Token-Idee, **% used**, Compaction
5. **Bild & Voice** — Paste/Drop, Spracheingabe
6. **`@`‑Mentions** — Dateien, Ordner, Docs, Past Chats → Details **Section 03**
7. **Terminal** — **`@Terminal`**, Logs mitgeben
8. **Diff zu `main`** — im **Prompt** formulieren (kein `@Git`-Menü)
9. **Feature Overview** — semantische Suche, **Simple Browser** (**⌘⇧P**), Bildgenerierung
10. **Message Queue** — **Enter** (wartet) vs. **⌘Enter** (sofort)

---

# Cursor ≈ VS Code + Cursor-Layer

- **Gleiche Basis** wie VS Code — dazu Cursor-spezifische Oberfläche (Agent, Modell, …)
- **Shortcuts** wie gewohnt — u. a. **⌘E** Agent ein/aus, **⌘B** Sidebar, **⌘⇧F** Suche
- **Neuer Chat:** z. B. **⌘T** (wie im Dry-Run)

> Ziel: VS-Code-Nutzer fühlen sich zu Hause; Cursor ergänzt den **Agent-Workflow**.

---

# Live-Prompt: eine Nachricht im Chat

- Beispiel-Prompt (gern mit „menschelndem“ Tippfehler): *What is this project about? Explain me like I'm 5.*
- **Fokus nicht die Antwort** — sondern was **neben dem Text** passiert: Modell, Kontext, Tokens …

---

# Modellauswahl — das Herzstück

- **Pro Chat / pro Lauf:** welches Modell soll der Agent nutzen?
- **Shortcut im Chat:** **⌘⇧/** öffnet die Modell-Auswahl — durchtabben, Vorauswahl ist **team-/nutzerabhängig**
- **All Models** — lange Liste; eigene **API-Keys** (z. B. Anthropic, Google, Azure) möglich, **Usage** ähnlich gelagert

**Medien:** [Model Selection](../../../input/ui-controls/model-selection.png)

[Models (Doku)](https://cursor.com/docs)

---

# Auto, Multiple Models, Max (optional)

- **Auto** — Cursor wählt passendes Modell; oft **günstiger** / sparsamer mit Tokens
- **Use Multiple Models** — mehrere Modelle an **eine** Aufgabe; lohnt zum **Ausprobieren** (Verhalten je nach Setup)
- **Max Mode** — falls in eurer Lizenz nicht enthalten: **überspringen** oder nur erwähnen

---

# Kontextfenster (Context Window)

- Zeigt, wie viel **Kontext** das gewählte Modell „im Kopf“ hat — in **Tokens** (grob: verarbeitete Menge)
- **Rad / Prozent** (z. B. *x % context used*) — wie viel von diesem Fenster die **aktuelle Session** schon verbraucht
- **Wenn es voll wird:** committen, sichern, **neue Session** — sonst **Compaction** (Zusammenfassung + Neustart) → ältere Details gehen verloren

**Medien:** [Context Window](../../../input/ui-controls/context-window.png)

---

# Bild & Voice

- **Bilder** in den Chat (Paste / Drop) — Screenshots, Mockups, Fehler
- **Spracheingabe** — praktisch, gut nutzbar im Alltag

---

# `@` — Mentions & Kontext (Überblick)

- **Dateien, Ordner, Symbole** anhängen — statt alles manuell zu beschreiben
- **Ordner** statt viele Einzeldateien — Struktur auf einmal mitgeben
- **`@Docs`** — Doku per Link / Eintrag (**+** / *Add doc*)
- **`@Past Chats`** — frühere Chats einbinden, wenn die Aufgabe ähnlich ist
- **Details & Regeln** → **Section 03**

![@-Menü (Beispiel)](../../../input/sections/01/Context.png)

[Prompting agents](https://cursor.com/docs/agent/prompting)

---

# Terminal im Chat-Kontext

- **`@Terminal`** — Session / Output **mitgeben**, ohne ganzen Log abzutippen
- Praktisch bei **laufenden Logs**: Verhalten prüfen, Fehler zeigen — oft **selbsterklärend** für das Modell

---

# Branch / Diff zu `main`

- **Im Prompt** z. B. Vergleich Feature-Branch ↔ **`main`** (Produktion) — Agent holt sich Infos über **Git / Shell**
- Cursor 2.0: kein **`@Git`** im Mention-Menü — **formulieren**, was ihr braucht
- Praktisch z. B. für **Merge-Request-Beschreibung**; Referenz-Branch ggf. **konfigurierbar**

---

# Feature Overview

- **Semantische Suche** über die indexierte Codebase — [Search](https://cursor.com/docs/agent/tools/search)
- **Simple Browser:** **⌘⇧P** (Command Palette) → *Simple Browser* → URL — **DOM / Struktur** gezielt ins Chat, **DevTools** nutzbar
- **Bildgenerierung** als Agent-Tool (z. B. Mockups) — [Overview → Tools](https://cursor.com/docs/agent/overview#tools)

**Nicht verwechseln:** **Agent-Browser-Tool** = Seite wird vom Agenten bedient · **Simple Browser** = ihr steuert die Seite und schickt Kontext

---

# Queue vs. Sofort senden

- **Enter** → Nachricht in die **Queue** (wie offene Punkte); erst fertig mit dem **aktuellen Prompt**, dann die nächste — gut für **Setup Stück für Stück**, Test-Matrizen, …
- **⌘Enter** (**Ctrl+Enter**) → **sofort** raus; laufender Schritt wird **kurz unterbrochen**, Korrektur rein — z. B. **falsches Package**, Log sieht falsch aus

---

# Wo der Agent läuft (optional)

| Thema | Kurz |
| --- | --- |
| **Laufort** | **Local** / **Worktree** / **Cloud** — im Panel wählbar |
| **Sonstige Tools** | **Shell**, **Web**, … — [Overview → Tools](https://cursor.com/docs/agent/overview#tools) |

---

# Weiterführend

- [Agent Overview](https://cursor.com/docs/agent/overview)
- [Prompting agents](https://cursor.com/docs/agent/prompting)
- [Documentation Overview](https://cursor.com/docs)
