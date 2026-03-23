#!/usr/bin/env bash
set -euo pipefail

# Concatenate audience slide decks (Marp-friendly).
# Run from repo root: ./scripts/build-slides-full.sh

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
OUT="$ROOT/output/SLIDES-FULL.md"

strip_marp_frontmatter() {
  awk '
    BEGIN { s=0 }
    s==0 && /^---$/ { s=1; next }
    s==1 {
      if (/^---$/) { s=2; next }
      next
    }
    { print }
  ' "$1"
}

{
  printf '%s\n' '---'
  printf '%s\n' 'marp: true'
  printf '%s\n' "paginate: true"
  printf '%s\n' "footer: 'Cursor Agentic Coding — Full deck (Sections 01–07)'"
  printf '%s\n' '---'
  printf '\n%s\n\n' '# Cursor Agentic Coding in Practice'
  printf '%s\n\n' '**Handout / Folien** — Sections 01–07 (ohne Referenten-Skript).'
  printf '%s\n\n' "> Gebaut mit \`./scripts/build-slides-full.sh\` — nach Änderungen an \`slides.md\` neu erzeugen."
  for n in 01 02 03 04 05 06 07; do
    printf '\n%s\n\n' '---'
    printf '%s\n\n' "## Deck Section ${n}"
    strip_marp_frontmatter "$ROOT/output/sections/$n/slides.md"
  done
} > "$OUT"

echo "Wrote $OUT"
