# This is a good example but planned for 2 hours and too long. For our Tech Talk, we have a max of 45m-50m time window.

# Cursor 2-Stunden-Workshop

Version: 1.3.0

Zuletzt aktualisiert: 10. März 2026

Hinweis:

Diese Version ist eine abgeleitete Cursor-Fassung des bestehenden Workshops und wurde für Cursor-spezifische Lücken mit offiziellen Cursor-Quellen nachgeschärft. Stand der berücksichtigten Produktinformationen ist der 10. März 2026.

## Recent Updates

Stand: 10. März 2026 sind für Cursor vor allem diese Entwicklungen relevant:

1. Die Modus-Trennung wird schärfer: `Ask` für Verstehen, `Manual` für menschlich kontrollierte Schritte und `Agent` für mehrstufige Umsetzung.
2. `.cursor/rules`, `AGENTS.md` und Memories verschieben Kontext stärker in dauerhafte, teamfähige Artefakte statt in einzelne Chat-Verläufe.
3. Background Agents treiben Cursor klar in Richtung asynchroner Remote-Arbeit, sind aber wegen Datenschutz- und Exfiltrationsrisiken kein Einsteiger-Default.
4. Tabs, `@Past Chats`, Memories und Checkpoints verbessern Handoffs und Kontextpflege, ersetzen aber weiterhin nicht `git` als Wahrheitsquelle.
5. Der Trend geht zu einer Kombination aus lokalem Editor-Loop und gezielt eingesetzter Remote-Agentenarbeit statt zu einem einzigen Arbeitsmodus.

## Ziel des Workshops

Die Teilnehmenden sollen ein verlässliches Betriebssystem für `Agentic Engineering` mit Cursor bekommen:

1. Vor dem Coden planen.
2. Kleine, kontrollierte Schritte bevorzugen.
3. Diffs, Tests und Feedback systematisch nutzen.
4. Riskante oder parallele Arbeit sauber isolieren.

Im Mittelpunkt steht nicht magisches Prompting, sondern eine professionelle Arbeitsweise mit Planung, Kontrolle, Review und reproduzierbaren Ergebnissen.

## Zielgruppe und Voraussetzungen

Zielgruppe:

1. Software Developer von Junior bis Lead.
2. Wenig bis keine Erfahrung mit agentischen Entwicklungswerkzeugen.
3. Bisher vor allem Erfahrung mit Editor-Autocomplete, Chat-Assistenz oder klassischer Pairing-Unterstützung.

Voraussetzungen:

1. Cursor ist installiert und im Team-Setup einsatzfähig.
2. Ein vorbereitetes Demo-Repository ist vorhanden.
3. `rg` und `jq` sind installiert.
4. Ein funktionierender Test-, Lint- oder Build-Command für das Demo-Repo ist bekannt.
5. Die Teilnehmenden können grundlegende Shell-Commands lesen.
6. Für fortgeschrittene Teile gilt: Background Agents brauchen GitHub-Zugriff auf das Repository.

## Editor plus Shell ist der Kern

Für den Einstieg lautet die wichtigste Vereinfachung im Workshop: `Editor plus Shell ist der Kern`.

Gemeint ist:

1. Ein großer Teil produktiver Agentenarbeit entsteht nicht durch Spezialmagie, sondern durch gutes Zusammenspiel aus Lesen, Suchen, Editieren, Diff-Review und Bash.
2. Cursor wird dann stark, wenn es nicht nur Text erzeugt, sondern in einen klaren Engineering-Loop eingebettet wird.
3. `rg`, `git`, Test-Commands, Logs und kleine Unix-Pipelines sind oft wertvoller als lange Prompts.
4. Die Sicherheitsbasis bleibt gleich: Least Privilege, klare Freigaben und keine destruktiven Schritte ohne Review.

Die praktische Botschaft für Einsteiger lautet deshalb:

1. erst den kleinen Kern-Werkzeugkasten beherrschen,
2. dann den agentischen Loop darauf aufbauen,
3. erst später komplexere Automatisierung und Parallelisierung einführen.

## Welche Cursor-Bausteine nutzen wir im Workshop?

Der Workshop nutzt bewusst nur die Teile, die für Einsteiger schnell belastbar werden:

1. **`Tab`** für lokale Vervollständigung.
2. **`Inline Edit`** für kleine gezielte Umschreibungen.
3. **`Ask`** für Read-only-Verstehen, Planung und Rückfragen.
4. **`Manual`** als kontrollierte Zwischenstufe mit menschlicher Bestätigung pro Schritt.
5. **`Agent`** für mehrstufige Arbeit mit Datei-Edits und Terminal.
6. **`.cursor/rules`, `AGENTS.md` und Memories** für wiederverwendbaren Kontext.
7. **`Checkpoints`** für lokale Rücksprünge bei Agent-Änderungen.
8. **Background Agents** nur als fortgeschrittene Erweiterung.

Der didaktische Punkt ist:

1. `Ask` reduziert Risiko in der Analysephase.
2. `Manual` hält den Menschen im Loop, wenn `Agent` noch zu viel Reichweite hätte.
3. `Agent` gehört erst nach einer klaren Planfreigabe in die Umsetzung.
4. Rules und Memories stabilisieren Teams früher als lange Chat-Verläufe.
5. `Checkpoints` helfen beim schnellen Undo, ersetzen aber kein `git`.

## Git is your friend

Wenn `Editor plus Shell ist der Kern` das Einsteigerprinzip für Tools ist, dann ist `git is your friend` das Einsteigerprinzip für Kontrolle.

Gemeint ist:

1. `git status` und `git diff` machen sichtbar, was wirklich passiert ist.
2. Kleine Commits schaffen Rücksprungpunkte.
3. Branches und `git worktree` isolieren parallele oder unsichere Arbeit.
4. Cursors `Checkpoints` sind nützlich für schnelles Zurückrollen von Agent-Änderungen, aber kein Ersatz für echte Versionshistorie.
5. Riskante Änderungen ohne sichtbaren Rückweg sind auch mit Cursor schlechte Praxis.

Die praktische Regel lautet:

1. vor größeren Änderungen den Ausgangszustand sichtbar machen,
2. während Agent-Arbeit `Checkpoints` als Komfortfunktion nutzen,
3. nach sinnvollen Zwischenständen echte Git-Checkpoints schaffen,
4. Diff und Tests immer über Vermutung stellen.

## Input, Output und Self-Checking

Ein großer Teil guter Agentenarbeit besteht darin, Eingaben und Ausgaben bewusst zu gestalten.

1. **Guter Input** bedeutet: klare Aufgabe, klare Grenzen, relevante Dateien, saubere Daten.
2. **Guter Output** bedeutet: kleine, prüfbare Änderungen statt viel Text.
3. **Self-Checking** bedeutet: nach jedem Schritt Diff, Tests, Fehler und Seiteneffekte prüfen.
4. **Close the loop** bedeutet: Feedback auswerten und den nächsten sinnvollen Schritt ableiten statt blind weiterzumachen.

Die praktische Regel lautet:

1. Inputs klein und präzise halten,
2. Outputs filtern und reviewbar machen,
3. Fehler nicht verstecken, sondern in den nächsten Schritt überführen.

## Was bedeutet Agentic Engineering?

Agentic Engineering bedeutet, Modelle nicht nur für schnelle Ideen oder Einmal-Prompts zu nutzen, sondern als kontrollierte Arbeitskomponente im Engineering-Prozess.

Dazu gehören:

1. klare Aufgaben und Grenzen,
2. strukturierte Schleifen aus Planen, Ausführen und Feedback,
3. technische und organisatorische Guardrails,
4. nachvollziehbare Ergebnisse statt spontaner Einmal-Erfolge.

Der Workshop versteht Cursor deshalb als Arbeitsumgebung für verlässliche technische Arbeit, nicht als Schreibmaschine für unkontrollierte Code-Massen.

## Was ist neu im Vergleich zu klassischer Editor-AI?

Viele Teilnehmende kennen bereits Autocomplete oder Chat im Editor. Der Unterschied im Workshop ist:

1. Cursor soll nicht nur antworten, sondern Arbeitsschritte im Kontext eines echten Repositories unterstützen.
2. Entscheidend ist nicht die erste Antwort, sondern der kontrollierte Loop aus Analyse, Plan, Änderung und Feedback.
3. Erst mit Diff-Review, Tests, Git und klaren Freigaben wird daraus ein belastbarer Workflow.

Konkret bringt Cursor dafür heute mehrere Bausteine mit:

1. `Ask` als Read-only-Modus für Lernen, Planung und Fragen.
2. `Manual` als kontrollierte Zwischenstufe für schrittweises Arbeiten.
3. `Agent` für autonome Exploration, Multi-File-Edits und Terminal-Nutzung.
4. `Rules` und `AGENTS.md` für wiederverwendbare Instruktionen im Projekt.
5. `Memories` für langlebigen Kontext.
6. `Custom Modes` und Background Agents für spätere teamspezifische Arbeitsweisen.

## One-Shot-Mentalität und Realität

Viele Einsteiger hoffen auf einen perfekten Einmal-Prompt. Genau das ist in der Praxis meist die falsche Erwartung.

Die Realität:

1. Gute Ergebnisse entstehen selten in einem einzigen großen Schuss.
2. Je größer der Prompt, desto höher das Risiko für Missverständnisse und unnötige Änderungen.
3. Verlässliche Arbeit entsteht fast immer in kleinen Iterationen mit Review.

Die praktische Regel lautet:

1. `one shot` höchstens für sehr kleine, risikoarme Aufgaben,
2. für echte Entwicklungsarbeit gilt: planen, ändern, prüfen, nachsteuern.

## Was ist ein agentischer Loop?

Ein agentischer Loop ist kein einzelner großer Prompt, sondern ein kontrollierter Arbeitszyklus:

1. **Beobachten**: den aktuellen Zustand verstehen, Dateien lesen, Logs prüfen, Tests ansehen.
2. **Planen**: die kleinste sinnvolle nächste Aktion definieren.
3. **Ausführen**: genau diese Aktion umsetzen, nicht mehr.
4. **Feedback einholen**: Diff, Tests, Output oder Fehlermeldungen auswerten.
5. **Anpassen**: aus dem Ergebnis den nächsten kleinen Schritt ableiten.

Im Workshop ist das das zentrale Denkmodell hinter Feature-Arbeit, Bugfixing und Refactoring.

## Wie sieht der agentische Loop in Cursor konkret aus?

In Cursor besteht der praktische Loop meistens aus einer wiederkehrenden Sequenz:

1. **`Ask` für Verstehen und Plan**: relevante Dateien, Logs oder Fehlermeldungen eingrenzen.
2. **Nächsten Schritt planen**: eine kleine Änderung oder Analyse formulieren.
3. **`Manual` oder `Agent` gezielt einschalten**: erst für freigegebene Umsetzungsphasen.
4. **Diff und Checkpoint prüfen**: bevor weitergemacht wird, Änderungen sichtbar reviewen.
5. **Feedback holen**: Tests, Linting, Build oder manuelle Plausibilitätsprüfung.
6. **Loop neu starten**: auf Basis des Ergebnisses den nächsten Schritt wählen.

Der wichtige Punkt ist: Cursor wird stark, wenn dieser Loop klein, sichtbar und kontrolliert bleibt.

## Was bedeutet Plan-First in der Praxis?

Plan-First bedeutet nicht, dass das Modell einmal einen perfekten Plan schreibt und danach alles automatisch richtig läuft. Der nützliche Modus ist eine kurze fachliche Konversation:

1. mehrere Optionen anfordern,
2. Trade-offs vergleichen,
3. offene Annahmen sichtbar machen,
4. erst danach eine Richtung freigeben.

Das Modell ist in dieser Phase kein Autopilot, sondern ein Denkpartner.

Für Cursor heißt das praktisch:

1. erst `Ask`,
2. dann `Manual` oder `Agent`,
3. bei wiederkehrenden Mustern später ein eigener `Custom Mode`.

## Was bedeutet Context Management?

Cursor arbeitet besser, wenn der aktuelle Kontext fokussiert bleibt. Deshalb gehört Context Management zu den wichtigsten Bedienkompetenzen.

## Was ist das Context Window?

Das Context Window ist der aktive Informationsraum, mit dem das Modell gerade arbeitet. Alles, was darin enthalten ist, beeinflusst Planung, Auswertung und Antwort.

Dazu gehören zum Beispiel:

1. die aktuelle Aufgabe,
2. relevante Teile der bisherigen Konversation,
3. geöffnete Dateien, Fehlermeldungen und Command-Outputs,
4. aktive Regeln und Repo-Konventionen.

Das Context Window wird nicht besser, wenn man möglichst viel hineinstopft. Es wird besser, wenn die richtigen Informationen darin sind.

## Kritische Themen beim Context Management

Die wichtigsten Fehlerquellen sind:

1. **Kontext-Verschmutzung**: alte Ziele oder verworfene Ideen bleiben aktiv.
2. **Kontext-Überladung**: zu viele Dateien, Logs oder Outputs verdrängen das Wichtige.
3. **Kontext-Drift**: das Modell arbeitet auf alten Annahmen weiter.
4. **Kontext-Mischung**: mehrere verschiedene Aufgaben in einer Session verschlechtern Entscheidungen.
5. **Scheinpräzision**: nur weil etwas im Verlauf steht, ist es noch lange nicht gut gewichtet.

Die Grundregel im Workshop lautet: lieber neu fokussieren als mit schlechtem Kontext weiterarbeiten.

## Vergleich mit einem echten Developer

Der beste Vergleich ist das Arbeitsgedächtnis eines echten Developers.

1. Auch ein Mensch kann nicht gleichzeitig den gesamten Codebestand, alle Logs, alle Architekturdetails und alle offenen Entscheidungen gleich gut im Kopf halten.
2. Gute Developer reduzieren Komplexität durch kleine Schritte, Notizen, Diffs und Tests.
3. Genauso braucht auch Cursor einen fokussierten Arbeitsraum statt maximal viel Input.

Praktische Mechanismen im Workshop:

1. neue Session oder neuen Tab starten, wenn alte Annahmen stören,
2. pro Task einen eigenen Chat-Tab nutzen,
3. Zwischenstand kompakt zusammenfassen, bevor weitergearbeitet wird,
4. bei Bedarf `@Past Chats` für kontrollierte Handoffs nutzen,
5. pro Session nur ein klares Ziel verfolgen.

## Cursor-spezifische Kontextwerkzeuge

Cursor hat dafür einige konkrete Mechanismen:

1. **Chat Tabs**: neue Tabs mit `Ctrl+T`; jeder Tab hat eigenen Verlauf, Kontext und Modellwahl.
2. **Konfliktschutz**: Cursor verhindert, dass mehrere Tabs gleichzeitig dieselben Dateien editieren.
3. **History**: frühere Chats sind lokal gespeichert und können exportiert werden.
4. **`@Past Chats`**: frühere Kontexte können gezielt in neue Chats referenziert werden.
5. **Memories**: wiederkehrende Vorlieben oder Projekthinweise können langfristig verfügbar bleiben.

## Wann nehme ich was?

Diese Übersicht trennt die wichtigsten Bausteine:

1. **`Ask`**: für Read-only-Verstehen, Planung und Rückfragen.
2. **`Manual`**: für kontrollierte Einzelschritte mit menschlicher Bestätigung.
3. **`Agent`**: für mehrstufige Umsetzung mit Datei-Edits und Terminal.
4. **`.cursor/rules`**: für versionierte, scoppbare Projektregeln.
5. **`AGENTS.md`**: für einfache, globale Projektinstruktionen im Repo-Root.
6. **Memories**: für langlebige Kontexte, wenn Regeln allein nicht reichen.
7. **User Rules**: für persönliche globale Präferenzen.
8. **Skripte und Commands**: für deterministische Checks, Builds, Tests und Filterung.
9. **Background Agents**: für längere, gut abgegrenzte Remote-Aufgaben.
10. **`git worktree` und separate Branches**: für parallele oder riskantere Arbeit.
11. **Externe Integrationen und MCP**: erst später und nur mit klarer Berechtigung und Verantwortung.

Die Grundregel lautet:

1. erst manuell sauber arbeiten,
2. dann Projektregeln explizit in `.cursor/rules` oder `AGENTS.md` machen,
3. erst später Memories, User Rules, Custom Modes und MCP systematisch ausbauen.

Wichtige Abgrenzung:

1. `.cursor/rules` ist die flexible, versionierte Standardlösung.
2. `AGENTS.md` ist die einfache Alternative, wenn ein offenes, root-basiertes Format im Team gewünscht ist.

## Was sind Evals, Session Logs und Monitoring?

Sobald Agentenarbeit nicht nur einmal ausprobiert, sondern wiederholt eingesetzt wird, reicht Bauchgefühl nicht mehr aus. Dann braucht man drei einfache Beobachtungsebenen:

1. **`Evals`**: klare Kriterien, woran ein guter Lauf erkennbar ist.
2. **Session Logs**: nachvollziehbare Spuren, was geprüft, geändert und entschieden wurde.
3. **Monitoring**: ein Blick über mehrere Runs hinweg, um Muster, Kosten, Fehler und Drift zu erkennen.

Für Einsteiger ist der praktische Kern klein:

1. vor einem wichtigen Run festlegen, was als Erfolg gilt,
2. nach dem Run Diff, Tests und Ergebnis gegen diese Kriterien prüfen,
3. wiederkehrende Fehlerbilder im Team sichtbar machen.

## Cursor-spezifische Guardrails und Datenschutz

Die wichtigste produktnahe Sicherheitsunterscheidung im Workshop ist:

1. **Foreground Agent**: Terminal-Commands brauchen standardmäßig Freigabe pro Command.
2. **Background Agents**: laufen remote, auto-runnen Commands und haben Internetzugriff.

Daraus folgen praktische Regeln:

1. für Einsteiger zuerst im lokalen Vordergrund-Agenten arbeiten,
2. `Privacy Mode` im Team bewusst aktivieren,
3. `.cursorignore` für Dateien nutzen, die der Agent gar nicht lesen soll,
4. `Run Everything` nicht als Standard etablieren,
5. Background Agents nur für klar abgegrenzte Aufgaben mit sauberem Repo-Zugriff verwenden.

Wichtig für Datenschutz und Sicherheit:

1. Mit aktiviertem `Privacy Mode` gilt laut Cursor für Modellanbieter Zero Data Retention; Code wird nicht für Training verwendet.
2. Wenn `Privacy Mode` deaktiviert ist, können Prompt- und Code-Daten zur Produktverbesserung und zum Training genutzt werden.
3. Background Agents benötigen einige Tage Datenhaltung während des Runs.
4. Background Agents auto-runnen Terminal-Commands und erhöhen dadurch das Exfiltrationsrisiko bei Prompt Injection.

## Parallele Arbeit ohne Chaos

Nicht jede Parallelisierung braucht Spezialfeatures. Für Einsteiger reicht oft schon ein sauberes Muster:

1. Problem in unabhängige Teilfragen zerlegen.
2. Für leichte Parallelität getrennte Chat-Tabs verwenden.
3. Für echte Isolation Branches, Worktrees oder Background Agents nutzen.
4. Rückgaben klein und vergleichbar halten.
5. Ergebnisse wieder bewusst zusammenführen.

Die Grundregel im Workshop lautet: erst `Plan-First`, dann Parallelisierung.

## Die 24 wichtigsten Ideen

1. **Kleiner Werkzeugkasten vor Spezialfeatures**: Editor, Shell, `git`, Tests und Suche reichen für den Einstieg weit.
2. **Agentic Engineering statt spontane Einmal-Treffer**: gute Ergebnisse entstehen durch kontrollierte, nachvollziehbare Arbeit.
3. **Agentischer Loop statt Einmal-Prompt**: gute Ergebnisse entstehen durch kontrollierte Iteration.
4. **Planung ist Gespräch, nicht Formular**: Optionen anfordern, diskutieren, entscheiden.
5. **Plan-First-Gate**: keine Änderungen, bevor ein konkreter Mini-Plan klar ist.
6. **Feedback-First-Loop**: Tests, Linting und Review nach jeder Phase.
7. **Kleine, klar abgegrenzte Änderungen**: reduziert Nacharbeit und vereinfacht Rollbacks.
8. **Kontext-Hygiene**: Sessions bewusst sauber halten.
9. **Grundlegende Sicherheitsdisziplin**: Least Privilege, sichere Pfade, Command-Review und klare Freigaben.
10. **Governance, Datenschutz und Redaction**: sensible Daten nie ungeprüft in Prompts, Tickets oder Logs geben.
11. **Ask vor Agent**: Analyse erst read-only, dann Umsetzung.
12. **Checkpoints sind Komfort, nicht Historie**: Undo ja, Versionsverwaltung nein.
13. **Diff vor Vertrauen**: sichtbare Änderung ist wichtiger als überzeugender Text.
14. **Tests sind Teil des Prompts**: Feedback muss immer mitgedacht werden.
15. **Git ist das Sicherheitsnetz**: `status`, `diff` und kleine Commits schaffen Rücksprungpunkte.
16. **Isolation als Standard**: Tabs für Denkräume, Worktrees oder Background Agents für echte Trennung.
17. **`.cursor/rules` vor Bauchgefühl**: Teamwissen explizit machen.
18. **`AGENTS.md` ist die einfache Repo-Variante**: gut für kleine Teams, aber global und unscoped.
19. **Privacy Mode bewusst behandeln**: Datenschutz ist eine Produkteinstellung, nicht nur eine Policy auf Papier.
20. **Background Agents sind kein kostenloses Upgrade**: sie bringen Tempo, aber auch mehr Exfiltrationsrisiko.
21. **One-Shot ist selten realistisch**: Iteration ist robuster als Magie.
22. **Input und Output bewusst gestalten**: klare Eingaben, kompakte Rückgaben, sichtbare Fehler.
23. **Bugfixing folgt demselben Loop**: reproduzieren, planen, fixen, prüfen.
24. **Close the loop macht den Unterschied**: erst Feedback macht Änderungen belastbar.

## 120-Minuten-Agenda

1. **0-15 Min.: Arbeitsmodell und Angst abbauen**
    - Zielbild des Workshops erklären.
    - Agentischen Loop als Grundmodell einführen.
    - `Ask` vs `Agent` sauber trennen.
    - One-Shot-Illusion auflösen.
    - Einen kleinen `First Win` zeigen.

2. **15-30 Min.: Editor, Bash und Security-Baseline**
    - Minimaler Einstieg in Bash Basics, Exit Codes und sichere Read-First-Commands.
    - `Checkpoints` vs `git` sauber unterscheiden.
    - `git status`, `git diff` und kleine Commits als Rücksprungmuster.
    - Inputs und Outputs bewusst klein und filterbar halten.
    - Least Privilege, `Privacy Mode` und Freigabepunkte vor riskanten Aktionen.

3. **30-55 Min.: Core Build Loop**
    - Beobachten -> planen -> ändern -> Diff reviewen -> Feedback einholen -> nachsteuern.
    - Im Plan mehrere Optionen anfordern und vergleichen.
    - Ein kleines Feature in Phasen umsetzen.
    - Nach jeder Phase Tests oder Checks laufen lassen.

4. **55-65 Min.: Context Management**
    - Was das Context Window ist.
    - Warum zu viel Kontext schadet.
    - Wann ein neuer Chat-Tab oder eine neue Session besser ist als Weiterreden.
    - Wie `@Past Chats` und kompakte Handoffs sinnvoll genutzt werden.

5. **65-75 Min.: Governance, Datenschutz und Redaction**
    - Welche Daten nicht ungeprüft in Prompts, Logs oder Tickets landen dürfen.
    - Prompt Injection über Dateien, Webseiten, Tickets und Logs als praktisches Risiko.
    - Foreground Agent vs Background Agent aus Sicherheitssicht.
    - Teamverantwortung für Freigabe, Dokumentation und Weitergabe.

6. **75-85 Min.: Bugfixing als Anwendung**
    - Den gleichen Loop auf einen Defekt anwenden.
    - Nur den kleinsten sicheren Fix umsetzen.
    - Regressionstest hinzufügen oder vorhandene Checks erweitern.

7. **85-95 Min.: Wiederverwendbare Muster**
    - Gute Prompt-Starts für wiederkehrende Aufgaben.
    - `.cursor/rules` oder `AGENTS.md` für Teamregeln.
    - Skripte und Templates statt Copy-Paste-Improvisation.

8. **95-105 Min.: Übung und Q&A**
    - Kleine Teilnehmerübung zum Core Build Loop oder Bugfixing.
    - Gemeinsame Reflexion: was war hilfreich, was war ungewohnt?

9. **105-115 Min.: Evals, Logs und Rollout**
    - Definieren, woran ein guter Run erkennbar ist.
    - Session Logs und Diffs als Review-Grundlage nutzen.
    - Wann Background Agents für das Team überhaupt sinnvoll sind.
    - Pilot-Workflow für reale Projekte festlegen.

10. **115-120 Min.: Bonus und Ausblick**
- `git worktree` für parallele Arbeit.
- Getrennte Tabs und Sessions für unterschiedliche Teilfragen.
- Background Agents, Web/Mobile und Slack nur mit klaren Guardrails.
- Externe Integrationen später mit klarer Berechtigung einführen.

## First Win

Der erste praktische Erfolg im Workshop soll maximal 5 Minuten dauern und keine Angst erzeugen.

Beispiel:

1. Cursor bekommt im `Ask`-Modus eine reine Read-only-Frage zum Demo-Repo.
2. Es findet mit `rg` oder über gezielte Dateikontexte eine relevante Stelle.
3. Es beschreibt zwei mögliche Änderungsrichtungen.
4. Die Teilnehmenden sehen sofort Mehrwert ohne Risiko.

Ziel des First Win:

1. Vertrauen aufbauen.
2. Den Unterschied zu reinem Chat sichtbar machen.
3. Die Hemmschwelle für die nächsten Schritte senken.

## Mitmach-Übungen

Jeder größere Block sollte eine kurze Teilnehmeraufgabe enthalten.

### Übung 1: Sicherer Einstieg

Aufgabe:

1. Mit Cursor eine Read-only-Frage zum Demo-Repo beantworten lassen.
2. Dazu bewusst `Ask` und vorhandene Suchwerkzeuge nutzen.

Erwarteter Output:

1. Fundstelle im Code.
2. Kurze Zusammenfassung.
3. Keine Dateiänderung.

### Übung 2: Plan-First

Aufgabe:

1. Für ein kleines Feature 2 bis 3 Optionen anfordern.
2. Gemeinsam eine Richtung auswählen.

Erwarteter Output:

1. Vergleichbare Optionen.
2. Risiken und Trade-offs.
3. Ein freigegebener Mini-Plan.

### Übung 3: Kontext aufräumen

Aufgabe:

1. Eine absichtlich unklare Session neu fokussieren.
2. Entscheiden, was behalten und was verworfen werden soll.

Erwarteter Output:

1. Klarerer Fokus.
2. Weniger Ballast.
3. Nächster Schritt ist eindeutig.

### Übung 4: Prompt oder Script?

Aufgabe:

1. Einen wiederkehrenden Analysefall identifizieren.
2. Entscheiden, ob dafür `.cursor/rules`, `AGENTS.md`, eine Memory, ein Standard-Prompt, ein Script oder eine Kombination sinnvoll ist.

Erwarteter Output:

1. klare Wiederverwendbarkeit,
2. definierte Rückgabe,
3. Entscheidung für das passende Muster.

## Live-Demo-Prompts

### Prompt A: Plan-Gate

```text
Use Ask mode first.
Do not edit code yet.
First give me 2-3 implementation options.
For each option include:
- exact files or components to inspect/change
- risks/tradeoffs
- simplicity vs flexibility
Then recommend one option and explain why.
Wait for discussion and explicit approval before implementation.
```

### Prompt B: Umsetzung in kleinen Phasen

```text
Switch to Manual or Agent mode only after the plan is approved.
Use Manual if you want me to confirm each meaningful change.
Implement the approved plan in small phases.
After each phase:
1) show the diff in a compact way
2) run the relevant tests/checks
3) summarize what changed
4) list remaining risks
Stop if unexpected failures appear.
```

### Prompt C: Agentischer Loop

```text
Work in a tight engineering loop:
1) inspect the current state
2) propose the next smallest useful step
3) execute only that step
4) collect feedback on the result
5) decide whether the goal is met or another iteration is needed
Do not batch multiple risky actions together.
```

### Prompt D: Kontext-Hygiene

```text
Before continuing, evaluate whether the current conversation still has useful context.
If the session is noisy or mixed with old goals:
1) summarize the essential state
2) identify what can be dropped
3) recommend whether to continue here, open a new tab, or start a fresh session
Keep only information required for the next step.
```

### Prompt E: Bugfix mit kleinstem sicheren Fix

```text
Find the root cause and propose the smallest safe fix.
Add or update a regression test if appropriate.
Avoid unrelated refactors.
```

### Prompt F: Angstfreie Zusammenarbeit

```text
Your role is to reduce uncertainty for the team.
For each suggestion, include:
- confidence level (high/medium/low)
- blast radius
- rollback approach
- what must be reviewed before execution
Do not execute non-trivial changes without explicit approval.
```

### Prompt G: Redaction vor Analyse

```text
Before using these logs or notes, identify and redact:
- secrets and tokens
- .env values and credentials
- personal data
- customer identifiers
- internal-only URLs
Return a sanitized version plus a short note on what was removed.
Do not proceed with the raw data.
```

## Bash-Command-Template

```bash
set -euo pipefail
trap 'echo "Command failed: $BASH_COMMAND"; exit 1' ERR

cmd="npm test"
output=$(eval "$cmd" | tail -n 120)
printf '%s\n' "$output"
```

## Minimale Bash- und Pipe-Beispiele

```bash
# Text in Dateien suchen
rg "TODO" src/

# Output filtern und begrenzen
rg "error" logs/app.log | tail -n 20

# JSON-Ausgabe lesbar machen
cat response.json | jq .

# Kombination aus Suche und Strukturierung
rg "status" data/ | jq -R .
```

## Essenzielles Command-Set

```bash
git status --short
git diff --stat
git worktree add ../proj-stream-a -b feat/stream-a
git worktree list

npm test
npm run lint
npm run typecheck
```

## Nicht verhandelbare Guardrails

1. Niemals destruktive Commands ohne explizite menschliche Freigabe ausführen.
2. Niemals ungeprüfte Secrets, `.env`-Werte oder personenbezogene Daten in Prompts, Logs oder Tickets weitergeben.
3. Niemals mehrere unzusammenhängende Ziele in derselben Session vermischen.
4. Niemals großflächige Änderungen ohne Plan, Diff-Review und Feedback durchziehen.
5. Niemals Cursor-`Checkpoints` mit echter Versionshistorie verwechseln.
6. Niemals unklaren Modelltext über Diff, Tests und Repo-Realität stellen.
7. Niemals Background Agents für sensible Repos ohne bewusst geprüften Datenschutz- und Exfiltrationspfad starten.
8. Niemals `Run Everything` oder breite Allowlists als Sicherheitskontrolle missverstehen.
9. Niemals externe Integrationen ohne definierte Rolle, Berechtigung und Prüfpfad anbinden.

## Team-Adoptions-Checkliste

1. Einen gemeinsamen Standard für Plan-Gate-Prompts definieren.
2. Verbindliche Feedback-Commands pro Repository festlegen.
3. `git status`, `git diff` und kleine Checkpoint-Commits als Teamstandard vor riskanteren Schritten nutzen.
4. Einen Worktree-basierten Parallel-Workflow einführen.
5. Eine einfache Redaction- und Secrets-Regel für Logs, Screenshots und Support-Daten festlegen.
6. Einen Human-Review-Checkpoint vor jedem riskanten Command oder Merge einführen.
7. Eine kleine Eval-Checkliste für wiederkehrende Aufgaben definieren.
8. `.cursor/rules` oder `AGENTS.md` für Teamkonventionen pflegen.
9. `Privacy Mode` und Background-Agent-Nutzung als Teamentscheidung dokumentieren.

## Takeaways nach dem Workshop

Die Teilnehmenden sollten den Workshop mit diesen konkreten Artefakten verlassen:

1. einem Standard-Plan-First-Prompt,
2. einer sicheren Bash- und Git-Checkpoint-Checkliste,
3. einer einfachen Redaction- und Secrets-Regel,
4. einem kleinen Satz wiederverwendbarer Prompt-Starts,
5. einer Mini-Eval-Checkliste für wichtige Runs,
6. einer Team-Checkliste für Guardrails und Freigaben.

## Was in diesem Workshop bewusst ausgelassen wird

1. Komplexe Multi-Agent-Orchestrierung als Einsteigerstandard.
2. Tiefes Custom-Tooling, bevor die Kerngewohnheiten stabil sind.
3. Produktbereiche, die für das Team aktuell nicht freigegeben oder nicht sicher betrieben werden können.

## Verwendete Produktquellen

1. [Cursor Docs: Modes](https://docs.cursor.com/en/chat/agent)
2. [Cursor Docs: Overview](https://docs.cursor.com/chat/overview)
3. [Cursor Docs: Rules](https://docs.cursor.com/context/rules-for-ai)
4. [Cursor Docs: Tabs](https://docs.cursor.com/de/agent/chat/tabs)
5. [Cursor Docs: @Past Chats](https://docs.cursor.com/context/%40-symbols/%40-past-chats)
6. [Cursor Docs: Memories](https://docs.cursor.com/context/memories)
7. [Cursor Docs: Background Agents](https://docs.cursor.com/en/background-agents)
8. [Cursor: Data Use & Privacy Overview](https://cursor.com/privacy-overview/)
