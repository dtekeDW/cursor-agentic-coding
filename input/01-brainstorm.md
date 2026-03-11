- Erlaubt Tools sind:
    - Neu
        - Cursor
        - Claude Code
        - (Codex)
    - Bestend
        - Jetbrains AI (Junie)
        - Tabnine (tot sein)
        -
- Nicht zu tief
- Kein MCP entwicklen
- Fokus auf: Cursor IDE
- Cursor Basics
    - Agenten / Agents.md
    - Voice Input / Image Input
    - @Docs
    - Worktree/Cloud Mode
    - Context
        - Woher kommt das ?
            - @ Mentions / Folders
        - [Semantic Search](https://cursor.com/docs/context/semantic-search)
        - Was sagt uns das ?
        - Configs? 1x, 2x, → teurer, aber schneller, für Aufpreis von Tokens usw.
        - Können wir den setzen, wenn ja implizit/explizit ? (”Try to use as less tokens as needed…)
        - Wie teuer ist Kontext?
            - Claude Opus 4.6 vs Codex Mini 5.2 ö.ä
    - Modi


        | Modus | Für | Funktionen | Tools |
        | --- | --- | --- | --- |
        | [**Agent**](https://cursor.com/de/docs/agent/modes#agent) | Komplexe Features, Refactoring | Autonome Erkundung, Bearbeitung mehrerer Dateien | Alle Tools verfügbar |
        | [**Ask**](https://cursor.com/de/docs/agent/modes#ask) | Lernen, Planen, Fragen | Nur lesender Zugriff, keine automatischen Änderungen | Nur Such-Tools |
        | [**Plan**](https://cursor.com/de/docs/agent/modes#plan) | Komplexe Features, die Planung erfordern | Erstellt detaillierte Pläne vor der Ausführung, stellt klärende Rückfragen | Alle Tools verfügbar |
        | [**Debug**](https://cursor.com/de/docs/agent/modes#debug) | Schwierige Bugs, Regressionen | Hypothesengenerierung, Log-Instrumentierung, Laufzeitanalyse | Alle Tools + Debug-Server |
    - Regeln
    - Browser
    - https://cursor.com/de/docs/agent/terminal#sandbox → Sandbox
    - Review / Agent Diff
        
        ![image.png](attachment:ee68fcde-a7d8-4254-a50d-1f063d39db0d:image.png)
        
    - MCP Config
    - MCP Config JSON
    - Figma MCP Showcase
        - Korrekt gepflegte Design Component im Figma File
        - GGF Context Input für deutlicheren Output
        - Use Case ohne viel “Noise”
        - Figma → Component Implementierung (Storybook, …)
    - Chrome MCP ?
        - Kleiner A11y Check oder ähnlich
- Skills
    - Skills selber schreiben
    - Risiken
    - Skills.sh
    - Beispiel Skill
    - Allgemeint gut (Egal ob y oder x → SKILL ist SKILL)
- Commands ?
    - ChangeSet Changelog mit immer gleichen Flow als Kommando
        - Git diff… git check… Component Diffs..uncommited Changes…
    - TSDOC Command für Methods und mehr.
        - separates Fenster, im Multitasking, hier reicht ein kleineres Modell für Ausführung
        - Subagent ausführung → gar keine neues Instanz oder Fenster notwenig, kann unabhängig von aktueller Task sein (Component Integration Context Chat Flow vs Kommentare schreiben für erstellte Components, muss nicht im gleichen Context passieren)
- Ziel
    - Entwickler zeigen, die gerade nur “Chat verwenden” mehr die Basics Teachen
    - Cursor Setup → Goto? Direkt Anstoß kleine Projekt Guidelines
        - .cursor Ordner!