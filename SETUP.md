# Essay Practice — Setup

No credentials, no external services — this is just a helper script plus a daily reminder.

## Day to day

- When you're ready to write (any time — the 9am notification is just a nudge, not a trigger): run `~/dev/essay-practice/start_essay.sh`. It launches an interactive Claude session that checks `progress.md` for anything in progress, or suggests topics from your Obsidian `marinating/ideas.md` if nothing's active, then works with you on the actual draft.
- Drafts live in `drafts/`, one file per piece.
- `progress.md` tracks what's in progress and what's finished — Claude updates it during the session, but feel free to edit it yourself too.
- Output stays local for now, per your call — nothing auto-publishes. Once a piece feels done, you decide where it goes (the same weekly Substack flow in `~/dev/learning-tweet/` is the natural home if you want it there later).

## The 9am reminder

`com.minmiller.essayreminder.plist` just fires a macOS notification at 9am reminding you to run `start_essay.sh` — it does no content generation. To change the time, edit `Hour`/`Minute` in `~/Library/LaunchAgents/com.minmiller.essayreminder.plist` and reload it. To turn it off: `launchctl unload ~/Library/LaunchAgents/com.minmiller.essayreminder.plist`.
