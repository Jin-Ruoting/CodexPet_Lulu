#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PET_DIR="${CODEX_HOME:-$HOME/.codex}/pets/lulu"

if [[ ! -f "$SCRIPT_DIR/pet.json" ]]; then
  echo "Missing pet.json next to install.sh" >&2
  exit 1
fi

if [[ ! -f "$SCRIPT_DIR/spritesheet.webp" ]]; then
  echo "Missing spritesheet.webp next to install.sh" >&2
  exit 1
fi

mkdir -p "$PET_DIR"
cp "$SCRIPT_DIR/pet.json" "$PET_DIR/pet.json"
cp "$SCRIPT_DIR/spritesheet.webp" "$PET_DIR/spritesheet.webp"

echo "Installed Lulu Codex pet to $PET_DIR"
