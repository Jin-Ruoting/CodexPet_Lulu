# CodexPet_Lulu

Lulu is a Codex-compatible desktop pet generated from a cute capybara-style 3D toy reference. The packaged pet keeps the round yellow body, navy side cap, tiny orange topper, and crossbody pouch, while avoiding readable brand text.

## Quick Install

Clone this repository, then run:

```bash
git clone https://github.com/Jin-Ruoting/CodexPet_Lulu.git
cd CodexPet_Lulu
./install.sh
```

The installer copies the pet package to:

```text
${CODEX_HOME:-$HOME/.codex}/pets/lulu/
```

After installation, restart Codex or refresh/select custom pets if your Codex build supports live pet discovery.

## Manual Install

You can also install without the script:

```bash
mkdir -p "${CODEX_HOME:-$HOME/.codex}/pets/lulu"
cp pet.json spritesheet.webp "${CODEX_HOME:-$HOME/.codex}/pets/lulu/"
```

## Files

- `pet.json`: Codex pet manifest.
- `spritesheet.webp`: final 1536x1872 RGBA pet atlas, 8 columns by 9 rows, 192x208 cells.
- `qa/contact-sheet.png`: visual contact sheet for all animation rows.
- `qa/previews/*.gif`: lightweight motion previews.
- `qa/validation.json`: atlas validation output.
- `qa/review.json`: frame inspection output.

## Validation

The generated atlas passed the hatch-pet validation workflow:

- Format: WebP RGBA
- Size: 1536x1872
- Transparent RGB residue pixels: 0
- Frame inspection errors: none

## Pet States

The spritesheet includes all Codex pet rows:

1. `idle`
2. `running-right`
3. `running-left`
4. `waving`
5. `jumping`
6. `failed`
7. `waiting`
8. `running`
9. `review`
