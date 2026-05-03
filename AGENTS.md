# WezTerm Config — Agent Instructions

Cross-platform WezTerm configuration written in Lua. See [README.md](README.md) for setup and feature overview.

## Project Structure

```
wezterm.lua          # Entry point — assembles all modules via require()
config/
  keys.lua           # Platform-aware keyboard shortcuts
  launch_menu.lua    # Launch menu and default shell (Windows)
helpers/
  basic.lua          # OS detection: M.is_win, M.is_mac, M.is_linux
openspec/            # OpenSpec change-tracking workflow
  config.yaml
  specs/             # Active feature specs (written in Chinese)
  changes/archive/   # Completed changes with design/proposal/tasks
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

**Platform detection** — always use `helpers/basic.lua`, never inline `wezterm.target_triple` checks:
```lua
local helpers = require("helpers.basic")
if helpers.is_mac then ... elseif helpers.is_win then ... end
```

**Keybindings** — macOS uses `CMD`, Windows/Linux uses `CTRL`. Always provide both variants in `config/keys.lua`.

**Spec language** — feature specs in `openspec/specs/` are written in Chinese (中文).

## OpenSpec Workflow

Changes are proposed, designed, and tracked in `openspec/`. Use the openspec skills (`/openspec-propose`, `/openspec-apply-change`, `/openspec-archive-change`) to manage the lifecycle. Active specs live in `openspec/specs/`, completed ones move to `openspec/changes/archive/`.
