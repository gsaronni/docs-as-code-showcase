#!/usr/bin/env bash
# Build the runbook PDF. Same command locally and in CI.
# Requires: gem install asciidoctor-pdf rouge
set -euo pipefail

SRC="docs/modules/ROOT/pages/fastdelivery-runbook.adoc"
OUT_DIR="${1:-build}"

mkdir -p "$OUT_DIR"
asciidoctor-pdf \
  --failure-level WARN \
  --attribute revdate="$(date -u +%Y-%m-%d)" \
  --out-file "$OUT_DIR/fastdelivery-runbook.pdf" \
  "$SRC"

echo "Built $OUT_DIR/fastdelivery-runbook.pdf"
