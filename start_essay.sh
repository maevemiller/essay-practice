#!/bin/bash
set -euo pipefail

export PATH="$HOME/.local/bin:/usr/local/bin:$PATH"

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$DIR"

IDEAS_FILE="$HOME/Library/Mobile Documents/iCloud~md~obsidian/Documents/thought/marinating/ideas.md"

SEED_PROMPT="It's time for my daily ~30-minute essay-writing session. Start by reading progress.md in this directory (cwd) to see if a piece is already in progress.

If something is in progress: open its draft file in drafts/, remind me briefly where we left off, and let's continue writing/refining it together.

If nothing is in progress: read \"$IDEAS_FILE\" and suggest 2-3 topics from it that I haven't written about yet (skip anything that looks like private journaling rather than an essay idea — this file mixes both). Let me pick one, or I can propose my own. Once we pick a topic, create a new file in drafts/ for it and update progress.md to mark it in-progress.

Then just work with me on the actual writing for this session — draft, argue with me about structure, push back on weak points, whatever the piece needs. Save progress to the draft file as we go, and update progress.md if we finish the piece or stop partway through."

claude "$SEED_PROMPT"
