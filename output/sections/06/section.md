# Section 06 - Debug Mode: Systematisches Troubleshooting

| Feld | Wert |
| --- | --- |
| Section-ID | `06` |
| Owner | `Miguel` |
| Zeit | `5 Min` |
| Status | `work-in-progress` |
| Kern-Demo | `ja` |

## Navigation
- [Workshop Master](../../../Workshop.md)
- [Prev: Section 05](../05/section.md)
- [Next: Section 07](../07/section.md)

## Ziel dieser Section
- Section 06 zeigt den **Debug Mode** als systematische Methode für schwierige Bugs.
- Ergänzend: minimale Safety-Hinweise für den Alltag.

## Blueprint (Work in Progress)

### Teil 1: Debug Mode Showcase (3-4 Min)

**Kernbotschaft:**
- Debug Mode ist für unklare Fehlerbilder, bei denen "einfach fixen" nicht reicht.
- Typischer Flow: Hypothesen → Instrumentierung → Reproduktion → Log-Analyse → gezielter Fix.

**Was du konkret zeigst:**
1. **Problem präsentieren**: Ein unklarer Bug (z. B. Component rendert nicht richtig, API gibt sporadisch Fehler).
2. **Debug Mode aktivieren**: Zeigen, wie man in den Debug Mode wechselt.
3. **Hypothesen generieren lassen**: Agent schlägt 2-3 mögliche Root Causes vor.
4. **Instrumentierung**: Agent fügt gezielt Logs/Traces hinzu.
5. **Reproduktion + Analyse**: Bug reproduzieren, Logs auswerten.
6. **Gezielter Fix**: Basierend auf Evidenz, nicht auf Vermutung.

**Demo-Aufgabe (Vorschlag):**
- Nutze denselben Component-Kontext aus Section 04 für Kontinuität.
- Oder: Ein präparierter Bug im Demo-Repo (z. B. falscher State-Update, Race Condition).

**Prompt-Bausteine:**
```text
Use Debug mode.
This component sometimes renders incorrectly. 
Propose 3 root-cause hypotheses and what instrumentation you would add before fixing.
```

```text
Based on the logs, which hypothesis is confirmed?
Implement the minimal fix and explain why this solves the issue.
```

### Teil 2: Minimale Safety-Hinweise (1 Min)

**Kurz und knapp (keine Deep-Dive):**
1. **Diff vor Vertrauen**: Immer Review vor Commit.
2. **Terminal-Commands brauchen Freigabe**: Cursor Default.
3. **Keine Secrets in Prompts**: Sensible Daten vorher rausfiltern.
4. **"Run Everything" nicht als Team-Standard**: Bewusst entscheiden.

**Optional erwähnen:**
- `.cursorignore` für sensible Pfade
- Workspace Trust (Normal vs Restricted) für untrusted Repos

## Was du live in Cursor zeigst

1. **Debug Mode Demo (3-4 Min)**:
   - Bug präsentieren
   - Debug Mode aktivieren
   - Hypothesen + Instrumentierung zeigen
   - Fix basierend auf Evidenz

2. **Safety-Checkliste (1 Min)**:
   - 4 Punkte kurz durchgehen (Diff, Terminal, Secrets, Run Everything)
   - Keine Live-Demo nötig, nur Erwähnung

## Prompt-/Command-Bausteine

**Debug Mode starten**
```text
Use Debug mode.
This [component/API/function] has unexpected behavior: [describe symptom].
Propose 3 root-cause hypotheses with likelihood ranking.
For each, suggest what instrumentation would confirm or rule it out.
```

**Nach Instrumentierung**
```text
I've added the logs you suggested. Here's the output:
[paste logs]

Which hypothesis is confirmed? Implement the minimal fix.
```

**Safety-Reminder (zum Vorlesen)**
```text
Quick safety checklist before we wrap:
1. Always review diffs before committing
2. Terminal commands require approval by default
3. Never paste secrets into prompts
4. Don't enable "Run Everything" as team standard
```

## Plan B (wenn Live-Debug hängt)

1. Vorbereiteten Bug + Fix als Walkthrough zeigen.
2. Screenshots von Hypothesen → Logs → Fix Sequenz.
3. Nur Safety-Teil live, Debug als Erklärung.

## Was die Audience nach Section 06 verstanden haben soll

- Debug Mode ist für Evidence-First Troubleshooting, nicht für "einfach probieren".
- Hypothesen → Instrumentierung → Analyse → Fix ist der systematische Weg.
- Minimale Safety-Basics: Diff-Review, Terminal-Approval, keine Secrets, kein Run-Everything.

## Doc-Referenzen (Web)
- [Debug Mode](https://cursor.com/docs/agent/debug-mode)
- [Agent Security](https://cursor.com/docs/agent/security)

## To-dos (Section 06)

- [ ] Demo-Bug im Repo präparieren oder aus Section 04 ableiten.
- [ ] Debug-Flow einmal durchspielen und Timing validieren (3-4 Min realistisch?).
- [ ] Safety-Checkliste als 1 Slide vorbereiten.
- [ ] Entscheiden: Workspace Trust erwähnen oder weglassen?
