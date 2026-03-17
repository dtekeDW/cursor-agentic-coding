# Section 01 - Einstieg: Was ist der Agent und wie steuerst du ihn?

| Feld | Wert |
| --- | --- |
| Section-ID | `01` |
| Owner | `Dogan` |
| Zeit | `6 Min` |
| Status | `ready-for-presentation` |
| Kern-Demo | `nein` |

## Navigation
- [Workshop Master](../../../Workshop.md)
- Prev: `-`
- [Next: Section 02](../02/section.md)

## Ziel dieser Section
- Section 01 gibt ein schnelles Betriebsmodell: was der Agent ist, wo er arbeitet und wie du ihn waehrend eines laufenden Tasks steuerst.

## Die 3 Anker fuer den Einstieg
1. **Was ist Agent-Arbeit?**
   - Kein normaler Chat, sondern Zusammenspiel aus `Instructions`, `Tools` und `User messages`.
2. **Wo arbeitet der Agent?**
   - `Local` (aktueller Workspace), `Worktree` (lokale isolierte Umgebung), `Cloud` (separater Branch/Remote-Run).
3. **Wie steuerst du live nach?**
   - `Enter` = Queue (nach aktuellem Schritt), `Cmd+Enter` = Immediate (sofortiger Eingriff).

## Was du live in Cursor zeigst
1. **UI-Orientierung in 90 Sekunden**:
   - Context Window (woher der aktive Kontext kommt),
   - Modellauswahl,
   - Laufumgebung (`Local` / `Worktree` / `Cloud`).
   - Medien: [context-window.png](../../../input/ui-controls/context-window.png), [model-selection.png](../../../input/ui-controls/model-selection.png), [work-tree.png](../../../input/ui-controls/work-tree.png)
2. **Mini-Steuerung live**:
   - Eine Nachricht mit `Enter` (queued),
   - eine mit `Cmd+Enter` (immediate).
3. **Kurzsatz fuer die Audience**:
   - "Queue laesst den Agent fertigarbeiten, Immediate korrigiert den Lauf sofort."

## Optional bei Restzeit (30-45s)
- Bildinput kurz zeigen (`Cmd+V` / Drag-and-drop), damit klar ist: UI-Feedback und Fehlerscreenshots koennen direkt in den Prompt.

## Was die Audience nach Section 01 verstanden haben soll
- Agent-Arbeit ist ein kontrollierter Workflow, kein One-shot-Chat.
- Laufumgebung ist eine Produktentscheidung (Local/Worktree/Cloud) mit direktem Einfluss auf Risiko und Kollaboration.
- Steuerung waehrend der Ausfuehrung ist Teil der Arbeit (`Enter` vs `Cmd+Enter`).

## Prompt-Bausteine (kurz)
```text
Start in Agent mode.
Read relevant files first, then give me a 3-step plan before editing.
```

```text
Queue this note for after the current step:
"Add a short validation checklist."
```

```text
Send immediately:
"Stop current approach and switch to option B. Explain in 2 bullets."
```

## Doc-Referenzen (Web)
- [Agent Overview](https://cursor.com/docs/agent/overview)
- [Prompting agents](https://cursor.com/docs/agent/prompting)