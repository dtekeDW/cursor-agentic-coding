# Section 03 — Kontext richtig steuern (Rules, Context, Indexing)

**Vollständige Section-Referenz** (Inhalt + Sprechtext).  
**Kurz am Pult:** [presentation.md](presentation.md) · **Folien:** [slides.md](slides.md)

| Feld | Wert |
| --- | --- |
| Section-ID | `03` |
| Owner | `Miguel` |
| Zeit | `6 Min` |
| Status | `ready-for-content` |
| Kern-Demo | `nein` |

## Navigation

- [Ablauf-Checkliste (Referent:innen)](presentation.md)
- [Folien (Audience)](slides.md)
- [Workshop Master](../../../Workshop.md)
- [Prev: Section 02](../02/section.md)
- [Next: Section 04](../04/section.md)

## Ziel dieser Section

- Section 03 zeigt, wie **Rules**, **Context** und **Indexing** zusammen die Antwortqualität steuern.
- Zusätzlich setzt du den Übergang zu gutem **Prompting** (ohne schon tief in Skills/Subagents aus Section 05 zu gehen).

## Kernbotschaft (in 60 Sekunden)

1. Rules geben dauerhaftes Verhalten vor.
2. Context bestimmt, worauf das Modell konkret schaut.
3. Indexing entscheidet, was im Projekt auffindbar ist.
4. Prompting ist der Hebel, um das alles gezielt zu aktivieren.

## Rule-Typen auf einen Blick (was macht was?)

1. **Project Rules (`.cursor/rules`)**: versioniert im Repo, gut fuer projektweite Standards und file-scoped Regeln.
2. **User Rules**: persoenliche globale Praeferenzen, gelten projektuebergreifend fuer deinen Account.
3. **Team Rules**: zentral im Team gesteuert, optional enforcebar fuer alle Teammitglieder.
4. **AGENTS.md**: einfache Markdown-Variante fuer Agent-Instruktionen, schnell und leicht lesbar.

## Hierarchie (visuell fuer den Talk)

```text
                AGENTS.md
         (repo guidance, simple format)
                       |
                       v
Team Rules  ------>  Project Rules  ------>  User Rules
 (org-level)          (repo-level)          (personal)

Konfliktregel (Rules): Team > Project > User
```

## Was aktuell oft noch fehlt (und was du ergänzen solltest)

1. **Rules konkret machen**: kurz die Typen nennen (Project, User, Team, AGENTS.md) und wofür sie gedacht sind.
2. **Context aktiv steuern**: @-Mentions für Datei/Ordner/Symbol statt "ganzen Repo-Kontext".
3. **Indexing sichtbar machen**: kurz zeigen, dass ohne sauberes Indexing gute Prompts trotzdem limitiert sind.
4. **Prompting-Brücke bauen**: von "Kontext geben" zu "präzise Arbeitsanweisung geben".
5. **Projektbezug zeigen**: 1-2 echte Rule-Beispiele aus eurem Setup nennen (z. B. UnoCSS-Konventionen, API-Guidelines, Component-Rule/Template), damit der Effekt greifbar wird.

## Was du live in Cursor zeigst (6-Minuten-Ablauf)

1. **UI-Anchor (Screenshot)**: "Rules, Skills, Subagents" öffnen und klar sagen: Fokus jetzt nur auf **Rules**.
  - Medium: [rules.png](../../../input/ui-controls/rules.png)
2. **Rule-Typen kurz benennen**: Project vs User vs Team vs AGENTS.md (je 1 Satz, kein Deep-Dive).
3. **Unscharfer Prompt**: gleiche Aufgabe ohne gezielte Context-Auswahl.
4. **Präziser Prompt mit Context**: dieselbe Aufgabe mit `@Datei` oder `@Ordner`.
5. **Rule-Hinweis**: kurz zeigen, wo Rules liegen/konfiguriert werden.
6. **Vergleich**: Qualität, Präzision und Rückfragen im Output gegenüberstellen.
7. **Bridge zu Section 04**: "Mit diesem Fundament aus Rules und Context sind wir bereit für einen vollständigen Plan-First Workflow."

## Empfohlener Demo-Stil (was mehr Sinn macht)

1. **Nicht nur Settings-Tour**: reine Konfiguration erklärt "wo", aber nicht den messbaren Effekt.
2. **A/B ist stärker**: ein kurzer Chat-Vergleich mit identischer Aufgabe zeigt den Nutzen sofort.
3. **Empfohlene Reihenfolge**:
   - 60s UI/Rules-Konfiguration erklären,
   - 2-3 Min Prompt ohne Rule/AGENTS.md,
   - 2-3 Min gleicher Prompt mit Rule/AGENTS.md + gezieltem Context.
4. **Klarer Lernpunkt**: Rules/AGENTS.md sind kein Doku-Detail, sondern wirken direkt auf Antwortqualität und Konsistenz.

## Was die Audience nach Section 03 verstanden haben soll

- Context ist ein aktiver Steuerhebel und kein Nebenprodukt.
- Rules stabilisieren Qualität teamweit.
- Die Rule-Typen (Project/User/Team/AGENTS.md) haben unterschiedliche Rollen im Alltag.
- Section 04 setzt dieses Wissen in einem vollständigen Plan-First Workflow um.

## Doc-Referenzen (Web)

- [Rules](https://cursor.com/docs/rules)
- [Prompting Agents](https://cursor.com/docs/agent/prompting)
- [Help: Context](https://cursor.com/help/customization/context)
- [Help: Indexing](https://cursor.com/help/customization/indexing)
- [rules.png](../../../input/ui-controls/rules.png)

## Fokus-Set fuer 6 Minuten (fuer euch zu zweit)

1. **Rules-Typen in 1 Minute**: Project Rules, User Rules, Team Rules, AGENTS.md (nur Zweck, keine Tiefe).
2. **A/B-Chat in 3-4 Minuten**: gleicher Prompt einmal ohne und einmal mit Rule/AGENTS.md + `@`-Context.
3. **Prompting in 1 Minute**: `@`-Mentions als schnellster Qualitaetshebel (Datei/Ordner/Symbol).
4. **Takeaway in 30 Sekunden**: "Nicht mehr Prompt-Text, sondern besserer Kontext + klare Rules."

## To-dos (Section 03)

- [ ] Screenshot fuer **Agent Configuration** einbauen (Settings-Ansicht als Medium-Link).
- [ ] Screenshot fuer **Rules Configuration** einbauen (vorhanden: `rules.png`, final platzieren/validieren).
- [ ] Ein A/B-Beispielprompt final festlegen (ohne Rule vs. mit Rule/AGENTS.md).
- [ ] 1-Satz-Sprechtext fuer Rule-Precedence vorbereiten: Team -> Project -> User.
- [ ] Sprecheraufteilung zu zweit festlegen: Person A = UI/Rules (2 Min), Person B = A/B-Chat + Takeaway (4 Min).

### Beispiel-Prompts (A/B)

**Unscharf (Absichtlich schwach):**

```text
Improve the reservation card component. Make it cleaner.
```

**Präzise (mit Context):**

```text
In @packages/ui/.../ReservationCard.vue (adjust path): align spacing with our design tokens. Follow project rules in .cursor/rules for components. List files you will touch before editing.
```

---

## Talk-Referenz (Sprechtext & Tiefe)

### Einstieg (~45s)

Ab jetzt geht es nicht mehr nur darum, *welchen* Modus ihr wählt, sondern **welchen Kontext** das Modell sieht und **welche Regeln** dauerhaft gelten. Rules, Context und Indexing sind drei Hebel — und **Prompting** ist der Schalter, der sie gezielt aktiviert.

### Abschluss (~30s)

**Takeaway:** Context ist aktiv steuerbar (`@`-Mentions). **Rules** stabilisieren Qualität teamweit (Project, User, Team, `AGENTS.md`). Ohne brauchbares **Indexing** findet selbst ein guter Prompt nicht alles — kurz sichtbar machen.

### Beat-Folge (Referenz)

| Beat | Was du sagst | Was du zeigst |
| --- | --- | --- |
| 1 | Rule-Typen je ein Satz. | [rules.png](../../../input/ui-controls/rules.png) |
| 2 | Hierarchie Team > Project > User; AGENTS.md. | ASCII aus Section oben |
| 3 | **A/B-Chat** — gleiche Aufgabe ohne/mit `@` + Rules. | Zwei Chats |
| 4 | **Indexing** in einem Satz. | Optional Indexing-Settings |
| 5 | **Prompting-Brücke:** `@` live tippen. | — |

**Audience line:** *„Nicht mehr Prompt-Text — sondern besserer Kontext und klare Rules.“*

### Live-Demo Schritt für Schritt (empfohlen)

1. **~60s:** Settings — Rules; [rules.png](../../../input/ui-controls/rules.png) parallel.
2. **~2–3min:** **Prompt A** ohne `@` / minimale Rules.
3. **~2–3min:** **Prompt B** dieselbe Aufgabe mit `@` + `.cursor/rules` oder `AGENTS.md`.
4. **~30s:** Vergleich laut artikulieren.
5. Übergang: Section 04 Plan-First.

**Vorbereitung:** Einen konkreten A/B-Prompt festlegen (To-do oben).

### FAQ (wenn sie fragen)

| Frage | Kurzantwort |
| --- | --- |
| User vs. Project Rules? | **Project** versioniert im Repo; **User** accountweit — Hierarchie beachten. |
| Brauche ich `@` wenn der Agent sucht? | `@` **zwingt** Fokus und reduziert Umwege. |

### Übergang zu Section 04

„Alles, was wir über Kontext und Rules gesagt haben, zahlt jetzt in **Section 04** ein: **freigegebener Plan**, dann **eine Phase** kontrolliert umsetzen.“
