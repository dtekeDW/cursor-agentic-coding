# Section 01 - Einstieg: Cursor Agent Overview

| Feld | Wert |
| --- | --- |
| Section-ID | `01` |
| Owner | `Dogan` |
| Zeit | `6 Min` |
| Status | `ready-for-presentation` |
| Kern-Demo | `nein` |

## Navigation
- [Workshop Master](../../Workshop.md)
- Prev: `-`
- [Next: Section 02](../02/section.md)

## Ziel dieser Section
- Section 01 schafft ein klares Grundverständnis: Was Cursor Agent ist, wie er arbeitet und wie man ihn während laufender Tasks steuert.

## Was du konkret erklärst
### Teil 0: Wo ihr arbeitet und was ihr seht

*(Alle genannten UI-Elemente im Live-Teil zeigen; Medien für Referenz unten verlinkt.)*

- **Kontext-Fenster / Context Window (Kreis-Indicator):** Zeigt, wie viel Kontext aktuell genutzt wird – Codebase, geöffnete Dateien, Rules usw. fließen in diesen Kontext. Wichtig für lange Sessions: Manche Modelle halten mehr Kontext stabil.  
  → Medien: [context-window.png](../../../input/ui-controls/context-window.png)

- **Modellauswahl / Model Selection:** Bestimmt, welches Modell der Agent nutzt – z. B. Geschwindigkeit vs. Kontextumfang vs. Stil (strenger planend vs. direkter). Die Wahl beeinflusst Antwortlänge, Kontextstabilität und Planungsverhalten.  
  → Medien: [model-selection.png](../../../input/ui-controls/model-selection.png)

- **Wo der Agent läuft (Local / Worktree / Cloud):** Über Zahnrad oder Dropdown (z. B. unten links) wählt ihr aus:
  - **Local:** Agent arbeitet in eurem aktuell geöffneten lokalen Repo/Workspace – typischer Fall, direkt da wo ihr seid.
  - **Worktree:** Lokal, aber in einer **separaten Git-Worktree-Umgebung** (1:1 Agent zu Worktree). Sub-Agent in anderer Umgebung, Änderungen später per **Apply** in euren Branch übernehmen. Sinnvoll für paralleles Ausprobieren ohne euren Stand zu vermischen. Startet vom aktuell ausgecheckten Branch. *Beispiel:* Lokal auf `main` → Worktree-Agent starten → getrennte Worktree-Umgebung; am Ende prüfen und per Apply übernehmen.
  - **Cloud:** Repo wird geklont (z. B. GitHub/GitLab), Agent arbeitet in der Cloud auf einem **separaten Branch**, dann Push/PR – euer lokales Arbeitsverzeichnis wird nicht angefasst. Branch-Auswahl = Start-Branch für den Cloud-Agent, kein automatisches Merge in euren lokalen Branch.  
  → Medien: [work-tree.png](../../../input/ui-controls/work-tree.png)

**Kurz:** Context Window = Kontextnutzung sichtbar; Model Selection = welches Modell; Local/Worktree/Cloud = wo die Arbeit passiert.

- **Eingaben:** Neben Text könnt ihr im Composer ein **Bild anhängen** (Upload) – Screenshot, Sketch, UI-Mock – der Agent kann darauf Bezug nehmen.

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
1. **Composer öffnen und Teil-0-UI durchgehen:** Kontext-Fenster (Kreis-Indicator) zeigen → Modellauswahl zeigen → Wo der Agent läuft (Local/Worktree/Cloud, Zahnrad/Dropdown) zeigen; optional Bild-Upload andeuten. Entsprechende Medien: [context-window.png](../../../input/ui-controls/context-window.png), [model-selection.png](../../../input/ui-controls/model-selection.png), [work-tree.png](../../../input/ui-controls/work-tree.png).
2. Agent Panel kurz öffnen und den Komponenten-Frame erklären (`Instructions`, `Tools`, `User messages`).
3. Mini-Beispiel "Follow-up während Agent arbeitet":
   - Eine Nachricht mit `Enter` senden (Queue).
   - Eine zweite Nachricht mit `Cmd+Enter` senden (Immediate).
4. In einem Satz den Unterschied benennen: "Queued wartet, Immediate greift sofort in den laufenden Kontext ein."
5. Danach sauber zu Section 02 überleiten: Dort gehen die Modes im Detail rein.

## Was die Audience nach Section 01 verstanden haben soll
- Wo der Agent läuft: Local (direkt im Workspace), Worktree (lokale Sandbox, Apply später), Cloud (separater Branch, Push/PR); und was in der UI wichtig ist: Kontext-Indicator, Modellauswahl, Bild-Upload.
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