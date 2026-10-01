<div align="center">

<img src="https://raw.githubusercontent.com/wez/wezterm/main/assets/icon/wezterm-icon.svg" width="96" alt="WezTerm icon">

# WezTerm Config

*Modular cross-platform WezTerm configuration with platform-native keybindings*

![Platform](https://img.shields.io/badge/platform-Windows%20%7C%20macOS%20%7C%20Linux-blue?style=flat-square)
![Language](https://img.shields.io/badge/language-Lua-purple?style=flat-square)
![WezTerm](https://img.shields.io/badge/WezTerm-config-45a1ff?style=flat-square)

⭐ If you like this config, star it on GitHub — it helps a lot!

[Features](#features) • [Prerequisites](#prerequisites) • [Installation](#installation) • [Shortcuts](#keyboard-shortcuts) • [Customization](#customization)

</div>

A clean, modular [WezTerm](https://wezfurlong.org/wezterm/) configuration split into focused Lua modules. Keyboard shortcuts follow each platform's native conventions — **Windows Terminal** style on Windows/Linux and **iTerm2** style on macOS — with Monaspace Neon typography, CJK-capable font fallbacks, Tokyo Night theming, and a smart right-click copy/paste binding.

## Features

- **Platform-native shortcuts** — `Alt`-based pane management on Windows/Linux (Windows Terminal conventions), `Cmd`-based on macOS (iTerm2 and system conventions)
- **Smart right-click** — copies when there is a selection, pastes when there isn't (Windows Terminal behavior)
- **Modular structure** — configuration is split into logical modules under `config/` and `helpers/`, assembled by `wezterm.lua`
- **Monaspace Neon font** — full OpenType feature set with per-platform and CJK fallback fonts
- **Tokyo Night theme** — clean dark colorscheme (Catppuccin Mocha available as a commented alternative)
- **Windows launch menu** — quick access to `pwsh`, which is also the default shell on Windows
- **Auto-reload** — config changes apply instantly without restarting WezTerm

## Prerequisites

- [WezTerm](https://wezterm.org/installation.html)
- [Monaspace Neon](https://monaspace.githubnext.com/) *(optional — a full fallback font chain is configured)*
- [PowerShell 7](https://learn.microsoft.com/powershell/scripting/install/installing-powershell-on-windows) (`pwsh`) on Windows — used as the default shell

## Installation

Clone this repository into your WezTerm config directory:

```bash
# Linux / macOS
git clone https://github.com/TrickerPan/wezterm ~/.config/wezterm

# Windows (PowerShell)
git clone https://github.com/TrickerPan/wezterm "$env:USERPROFILE\.config\wezterm"
```

WezTerm will automatically pick up `wezterm.lua` from this location.

> [!NOTE]
> On Windows, WezTerm looks for the config at `%USERPROFILE%\.config\wezterm\wezterm.lua` or `%USERPROFILE%\.wezterm.lua`. See the [WezTerm config docs](https://wezterm.org/config/files.html) for all supported locations.

## Keyboard Shortcuts

### Window and tabs

| Action | macOS | Windows / Linux |
| --- | --- | --- |
| New window | `Cmd+N` | `Ctrl+N` |
| New tab | `Cmd+T` | `Ctrl+T` |
| Close tab | `Cmd+W` | `Ctrl+W` |
| Close pane | `Cmd+Shift+W` | `Ctrl+Shift+W` |
| Show launcher | `Cmd+Shift+L` | `Ctrl+Shift+L` |
| Previous / next tab | `Cmd+Shift+[` / `Cmd+Shift+]` | `Ctrl+Shift+Tab` / `Ctrl+Tab` |

### Panes

| Action | macOS (iTerm2 style) | Windows / Linux (Windows Terminal style) |
| --- | --- | --- |
| Split left / right | `Cmd+D` | `Alt+Shift++` |
| Split top / bottom | `Cmd+Shift+D` | `Alt+Shift+-` |
| Navigate panes | `Cmd+Opt+Arrow` | `Alt+Arrow` |
| Resize pane (5 cells) | `Ctrl+Cmd+Arrow` | `Alt+Shift+Arrow` |

### Editing and search

| Action | macOS | Windows / Linux |
| --- | --- | --- |
| Copy / paste | `Cmd+C` / `Cmd+V` | `Ctrl+Shift+C` / `Ctrl+Shift+V` |
| Search | `Cmd+F` | `Ctrl+F` |
| Copy mode | `Cmd+Shift+X` | `Ctrl+Shift+X` |
| Quick select | `Cmd+Shift+Space` | `Ctrl+Shift+Space` |
| Command palette | `Cmd+Shift+P` | `Ctrl+Shift+P` |
| Font size `+` / `-` / reset | `Cmd+=` / `Cmd+-` / `Cmd+0` | `Ctrl+=` / `Ctrl+-` / `Ctrl+0` |

> [!NOTE]
> Shortcuts not bound in `config/keys.lua` come from WezTerm's defaults: window/tab basics, tab switching, copy/paste, and font size on macOS; copy/paste, copy mode, quick select, the command palette, tab switching, and font size on Windows/Linux.

## Mouse

- **Right-click with a selection** — copies the selection to the clipboard
- **Right-click with no selection** — pastes from the clipboard
- Standard selection behavior (click, drag, double-click word, triple-click line) is preserved from WezTerm defaults

## Project Structure

```text
wezterm.lua          # Entry point — assembles all modules
config/
  keys.lua           # Platform-aware shortcuts (Windows Terminal / iTerm2 style)
  mouse.lua          # Smart right-click copy/paste
  launch_menu.lua    # Default shell and launch menu (Windows)
helpers/
  basic.lua          # OS detection (is_win, is_mac, is_linux)
openspec/            # Feature specs and change tracking (spec-driven workflow)
AGENTS.md            # Instructions for AI coding agents
```

## Customization

### Color scheme

The config defaults to **Tokyo Night**. To switch to Catppuccin Mocha, edit `wezterm.lua`:

```lua
-- config.color_scheme = "Tokyo Night"
config.color_scheme = "Catppuccin Mocha"
```

### Font size

```lua
config.font_size = 13  -- adjust to your preference
```

### Default shell

Edit `config/launch_menu.lua` to change the default program or add entries to the launch menu:

```lua
config.default_prog = { "pwsh.exe" }  -- change to "cmd.exe" or your preferred shell
```

## Validating Changes

> [!TIP]
> Because of auto-reload, edits apply to the running terminal immediately. To verify a config change from the command line, run:
>
> ```bash
> wezterm --config-file wezterm.lua ls-fonts
> ```
>
> Config errors appear as `ERROR` lines in the output — the exit code is always `0`, even when the config is broken, so scan the output rather than trusting the status.
