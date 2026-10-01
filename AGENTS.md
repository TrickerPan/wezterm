# WezTerm Config — Agent Instructions

Cross-platform WezTerm configuration written in Lua. This directory **is** the live WezTerm config — WezTerm auto-discovers `wezterm.lua` here and `automatically_reload_config = true` applies edits to the running terminal. See [README.md](README.md) for setup and feature overview.

## Verification

There is no build, test, lint, or CI. Validate config changes by loading them:

```bash
wezterm --config-file wezterm.lua ls-fonts
```

- Syntax and runtime errors surface as `ERROR` lines in the output — scan for them.
- **Exit code is always 0, even on config errors** — never trust the exit status.
- `show-keys` silently ignores config errors; do not use it as a validation check.

## Project Structure

```
wezterm.lua          # Entry point — assembles all modules via require()
config/
  keys.lua           # Platform-aware keyboard shortcuts (dual branch: is_mac / else)
  mouse.lua          # Smart right-click copy/paste
  launch_menu.lua    # Launch menu and default shell (Windows)
helpers/
  basic.lua          # OS detection: M.is_win, M.is_mac, M.is_linux
openspec/            # OpenSpec change-tracking workflow
  config.yaml        # Artifact language rules (context: Chinese)
  specs/             # Active feature specs (written in Chinese)
  changes/archive/   # Completed changes with design/proposal/tasks
.opencode/
  skills/            # OpenSpec lifecycle skills + git-commit, create-readme
  commands/          # /opsx-propose, /opsx-apply, /opsx-archive, /opsx-sync, /opsx-explore
```

## Key Conventions

**Module pattern** — every module exports a table with a `setup(config)` function that mutates the `wezterm.config_builder()` object:
```lua
local M = {}
M.setup = function(config)
  -- mutate config here
end
return M
```

**Module wiring** — modules are not auto-discovered: a new module only takes effect after adding a `require` and a `M.setup(config)` call in `wezterm.lua`.

**Platform detection** — always use `helpers/basic.lua`, never inline `wezterm.target_triple` checks:
```lua
local helpers = require("helpers.basic")
if helpers.is_mac then ... elseif helpers.is_win then ... end
```

**Keybindings** — `config/keys.lua` keeps two explicit platform branches (`helpers.is_mac` / else). Bindings follow each platform's native conventions: Windows/Linux mirrors Windows Terminal (`Alt`-based pane navigation/resize, `Alt+Shift+` splits, browser-style `Ctrl+T/W/F`), macOS mirrors iTerm2 and system habits (`Cmd+D` splits, `Opt+Cmd+Arrow` navigation, `Shift+Cmd+` tab switching). Rely on WezTerm defaults where they already match the platform habit instead of duplicating them.

**Spec language** — OpenSpec artifacts under `openspec/` are written in Chinese (中文) per `openspec/config.yaml`; keep technical terms, code, and file paths in English.

## OpenSpec Workflow

Changes are proposed, designed, and tracked in `openspec/`. The `openspec` CLI is installed; use the openspec skills (`/openspec-propose`, `/openspec-apply-change`, `/openspec-archive-change`, `/openspec-sync-specs`) or the equivalent `/opsx-*` commands in `.opencode/commands/`. Active specs live in `openspec/specs/`, completed ones move to `openspec/changes/archive/`.
