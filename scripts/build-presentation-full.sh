#!/usr/bin/env bash
set -euo pipefail

# Concatenate lecturer checklists (presentation.md) into one file.
# Run from repo root: ./scripts/build-presentation-full.sh

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
OUT="$ROOT/output/PRESENTATION-FULL.md"

{
  printf '%s\n\n' "# Cursor Agentic Coding — Referenten-Checklisten (alle Sections)"
  printf '%s\n\n' "> **Do not edit by hand.** Regenerate after changing any \`output/sections/*/presentation.md\`."
  printf '%s\n\n' "> Ausführlicher Inhalt + Sprechtext: jeweils \`section.md\` (Abschnitt **Talk-Referenz**). Generate: \`./scripts/build-presentation-full.sh\`"
  for n in 01 02 03 04 05 06 07; do
    printf '\n%s\n\n' "---"
    cat "$ROOT/output/sections/$n/presentation.md"
  done
} > "$OUT"

echo "Wrote $OUT"
