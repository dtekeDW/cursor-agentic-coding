# Section 04 - Kontext richtig steuern (Rules, Context, Indexing)

| Feld | Wert |
| --- | --- |
| Section-ID | `04` |
| Owner | `Miguel` |
| Zeit | `6 Min` |
| Status | `ready-for-content` |
| Kern-Demo | `nein` |

## Navigation
- [Workshop Master](../../Workshop.md)
- [Prev: Section 03](../03/section.md)
- [Next: Section 05](../05/section.md)

## Ziel dieser Section
- Section 04 zeigt, wie **Rules**, **Context** und **Indexing** zusammen die Antwortqualität steuern.
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
7. **Bridge zu Section 05**: "Skills/Subagents kommen als nächster Skalierungs-Schritt."

## Empfohlener Demo-Stil (was mehr Sinn macht)
1. **Nicht nur Settings-Tour**: reine Konfiguration erklärt "wo", aber nicht den messbaren Effekt.
2. **A/B ist stärker**: ein kurzer Chat-Vergleich mit identischer Aufgabe zeigt den Nutzen sofort.
3. **Empfohlene Reihenfolge**:
   - 60s UI/Rules-Konfiguration erklären,
   - 2-3 Min Prompt ohne Rule/AGENTS.md,
   - 2-3 Min gleicher Prompt mit Rule/AGENTS.md + gezieltem Context.
4. **Klarer Lernpunkt**: Rules/AGENTS.md sind kein Doku-Detail, sondern wirken direkt auf Antwortqualität und Konsistenz.

## Was die Audience nach Section 04 verstanden haben soll
- Context ist ein aktiver Steuerhebel und kein Nebenprodukt.
- Rules stabilisieren Qualität teamweit.
- Die Rule-Typen (Project/User/Team/AGENTS.md) haben unterschiedliche Rollen im Alltag.
- Section 05 skaliert das mit Skills, Commands und Subagents.

## Doc-Referenzen (Web)
- [Rules](https://cursor.com/docs/rules)
- [Prompting Agents](https://cursor.com/docs/agent/prompting)

## Fokus-Set fuer 6 Minuten (fuer euch zu zweit)
1. **Rules-Typen in 1 Minute**: Project Rules, User Rules, Team Rules, AGENTS.md (nur Zweck, keine Tiefe).
2. **A/B-Chat in 3-4 Minuten**: gleicher Prompt einmal ohne und einmal mit Rule/AGENTS.md + `@`-Context.
3. **Prompting in 1 Minute**: `@`-Mentions als schnellster Qualitaetshebel (Datei/Ordner/Symbol).
4. **Takeaway in 30 Sekunden**: "Nicht mehr Prompt-Text, sondern besserer Kontext + klare Rules."

## To-dos (Section 04)
- [ ] Screenshot fuer **Agent Configuration** einbauen (Settings-Ansicht als Medium-Link).
- [ ] Screenshot fuer **Rules Configuration** einbauen (vorhanden: `rules.png`, final platzieren/validieren).
- [ ] Ein A/B-Beispielprompt final festlegen (ohne Rule vs. mit Rule/AGENTS.md).
- [ ] 1-Satz-Sprechtext fuer Rule-Precedence vorbereiten: Team -> Project -> User.
- [ ] Sprecheraufteilung zu zweit festlegen: Person A = UI/Rules (2 Min), Person B = A/B-Chat + Takeaway (4 Min).
