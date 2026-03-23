# Audience slides template (`slides.md`)

**Zweck:** Folien-Markdown **für die Zuhörenden** — ohne Referenten-Anweisungen, ohne Live-Demo-Script. Stichpunkte, Tabellen, Links — orientiert an den **Lernzielen** der Section (siehe `section.md`).

**Konvention:** Pro Section `output/sections/NN/slides.md` neben `section.md` (volle Referenz + Talk-Referenz) und `presentation.md` (kurze Referenten-Checkliste).

**Marp (optional):** Kopf-Frontmatter aktivieren; Folienwechsel mit einer Zeile nur `---`. Export z. B. mit [Marp for VS Code](https://marketplace.visualstudio.com/items?itemName=marp-team.marp-vscode).

```markdown
---
marp: true
paginate: true
footer: 'Cursor Workshop — Section NN'
---

# Titel der Section

Kurzuntertitel / Lernziel

---

# Nächste Folie

- Stichpunkt
```

**Nicht** in `slides.md`: Checklisten für dich als Speaker (→ `presentation.md`), ausführlicher Sprechtext (→ `section.md` unter **Talk-Referenz**).
