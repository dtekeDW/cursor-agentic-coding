# Section 01 - Einstieg: Cursor Agent Overview

| Feld | Wert |
| --- | --- |
| Section-ID | `01` |
| Owner | `Dogan` |
| Zeit | `5 Min` |
| Status | `ready-for-presentation` |
| Kern-Demo | `nein` |

## Navigation
- [Workshop Master](../../Workshop.md)
- Prev: `-`
- [Next: Section 02](../02/section.md)

## Ziel dieser Section
- Section 01 schafft ein klares Grundverständnis: Was Cursor Agent ist, wie er arbeitet und wie man ihn während laufender Tasks steuert.

## Was du konkret erklärst
### Teil 1: Agent-Grundlagen
1. Cursor ist zuerst eine IDE, aber mit einem Agenten, der eigenständig Code-Tasks ausführen kann.
2. Ein Agent besteht aus drei Bausteinen:
   - `Instructions` (Cursor System Prompt + deine Rules),
   - `Tools` (Read/Edit/Search/Terminal/Web/Browser/Image),
   - `User messages` (deine laufenden Anweisungen).
3. Bei `Instructions` gibt es zwei Ebenen:
   - Basisvorgaben von Cursor (System Prompt),
   - deine projektbezogenen Rules, die du selbst setzt.
### Teil 2: Modellverhalten und Live-Steuerung
4. Cursor kombiniert diese drei Bausteine pro Modell - und je nach Modell kann sich das Verhalten deutlich unterscheiden.
   - Beispiel Geschwindigkeit: manche Modelle antworten schneller, aber kürzer.
   - Beispiel Kontext: manche Modelle halten mehr Detail-Kontext stabil über längere Tasks.
   - Beispiel Stil: manche Modelle planen strenger, andere sind direkter in der Ausführung.
   - Beispielmedium: [models.gif](../../../input/assets/models.gif)

**Tool-Block: Was Cursor Agent konkret kann**
- **Code verstehen:** Semantic Search im indexierten Codebase-Kontext (Bedeutung statt nur exakter Treffer), plus Datei-/Ordnersuche und Keyword-Suche.
- **Information holen:** Web-Suche, Fetch und Rules gezielt abrufen.
- **Code ändern:** Dateien lesen (inkl. `.png`, `.jpg`, `.gif`, `.webp`, `.svg`) und Dateien editieren.
- **Ausführen und prüfen:** Shell-/Terminal-Befehle ausführen und Browser steuern (navigieren, testen, Screenshots).
- **Zusammenarbeit im Flow:** Bilder generieren und Rückfragen stellen, während der Agent weiterarbeitet.

5. `Queue` (`Enter`) während laufender Agent-Arbeit:
   - Nachricht wird eingereiht und erst nach dem aktuellen Task verarbeitet.
   - Sinnvoll, wenn dein Hinweis wichtig, aber nicht zeitkritisch ist.
   - Beispielmedium: [queue.gif](../../../input/assets/queue.gif)
6. `Immediate` (`Cmd+Enter`) während laufender Agent-Arbeit:
   - Nachricht wird sofort gesendet und direkt an den aktuellen Kontext angehängt.
   - Sinnvoll, wenn du den Agent sofort korrigieren oder umlenken willst.
   - Kontext-Beispiel: "Ich bin in einer komplexen Feature-Umsetzung und merke, dass ich eine wichtige Bedingung vergessen habe."
### Teil 3: Checkpoints und Sicherheit
7. Checkpoints kurz einordnen:
   - Agent legt während Sessions Snapshots an.
   - Sie helfen beim lokalen Undo von Agent-Änderungen.
   - Sie ergänzen Git, ersetzen Git aber nicht.

## Was du live in Cursor zeigst
1. Agent Panel kurz öffnen und den Komponenten-Frame erklären (`Instructions`, `Tools`, `User messages`).
2. Mini-Beispiel "Follow-up während Agent arbeitet":
   - Eine Nachricht mit `Enter` senden (Queue).
   - Eine zweite Nachricht mit `Cmd+Enter` senden (Immediate).
3. In einem Satz den Unterschied benennen: "Queued wartet, Immediate greift sofort in den laufenden Kontext ein."
4. Danach sauber zu Section 02 überleiten: Dort gehen die Modes im Detail rein.

## Was die Audience nach Section 01 verstanden haben soll
- Ein Agent ist kein normaler Chat, sondern ein Zusammenspiel aus Instructions, Tools und User Messages.
- Nachrichten während laufender Tasks haben zwei Modi: Queue (`Enter`) und Immediate (`Cmd+Enter`).
- Checkpoints sind ein Sicherheitsnetz in der Session, Git bleibt das Versionssystem.

## Prompt-/Command-Bausteine (zum Vorlesen oder Kopieren)
```text
You are in Agent mode.
Start by reading the relevant files and summarize your plan in 3 short steps.
```

```text
Continue working, but queue this message:
"After you finish the current step, also add a short checklist."
```

```text
Send immediately (Cmd+Enter):
"Stop using approach A and switch to approach B. Explain why in 2 bullets."
```

## Doc-Referenzen (Web)
- [Agent Overview](https://cursor.com/docs/agent/overview)
- [Docs Overview](https://cursor.com/docs.md)
- [Quickstart](https://cursor.com/docs/get-started/quickstart.md)