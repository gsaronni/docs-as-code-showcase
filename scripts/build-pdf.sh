#!/usr/bin/env bash
# Build the runbook PDF. Same command locally and in CI.
# Requires: gem install asciidoctor-pdf rouge
set -euo pipefail

SRC="docs/modules/ROOT/pages/fastdelivery-runbook.adoc"
OUT_DIR="${1:-build}"
LOG="$OUT_DIR/asciidoctor-pdf.log"

mkdir -p "$OUT_DIR"
set +e
asciidoctor-pdf \
  --failure-level WARN \
  --attribute revdate="$(date -u +%Y-%m-%d)" \
  --out-file "$OUT_DIR/fastdelivery-runbook.pdf" \
  "$SRC" 2>&1 | tee "$LOG"
status=${PIPESTATUS[0]}
set -e

# Under GitHub Actions, turn every Asciidoctor message into an annotation
# (visible on the run page and inline in pull requests).
if [ -n "${GITHUB_ACTIONS:-}" ]; then
  (grep -E '^asciidoctor: (WARNING|ERROR|FAILED)' "$LOG" || true) | head -10 | while IFS= read -r line; do
    level=warning; echo "$line" | grep -qE 'ERROR|FAILED' && level=error
    echo "::${level}::${line}"
  done
fi

if [ "$status" -ne 0 ]; then
  echo "asciidoctor-pdf exited with status $status (see $LOG)"
  exit "$status"
fi
echo "Built $OUT_DIR/fastdelivery-runbook.pdf"
