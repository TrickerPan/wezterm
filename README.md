<div align="center">

# WezTerm Config

*A modular, cross-platform WezTerm terminal configuration*

![Platform](https://img.shields.io/badge/platform-Windows%20%7C%20macOS%20%7C%20Linux-blue?style=flat-square)
![Language](https://img.shields.io/badge/language-Lua-purple?style=flat-square)
</div>

---

A clean, cross-platform [WezTerm](https://wezfurlong.org/wezterm/) configuration split into focused modules. Handles font setup with CJK support, Tokyo Night theming, and platform-aware keyboard shortcuts out of the box.

## Features

- **Cross-platform** — Works on Windows, macOS, and Linux with platform-specific behavior where needed
- **Modular structure** — Configuration is split into logical modules under `config/` and `helpers/`
- **Monaspace Neon font** — Full OpenType feature set (ligatures, stylistic sets) with comprehensive CJK and fallback fonts
- **Tokyo Night theme** — Clean dark colorscheme (Catppuccin Mocha available as a commented alternative)
- **Platform-aware shortcuts** — Uses `CMD` on macOS and `CTRL` on Windows/Linux automatically
- **Windows launch menu** — Quick access to `pwsh` and Ubuntu (WSL) from the launcher
- **Auto-reload** — Config changes apply instantly without restarting WezTerm

## Prerequisites

- [WezTerm](https://wezfurlong.org/wezterm/installation.html) installed
- [Monaspace Neon](https://monaspace.githubnext.com/) font installed (optional — fallback fonts are configured)

## Installation

Clone this repository into your WezTerm config directory:

```bash
# Linux / macOS
git clone https://github.com/<your-username>/wezterm-config ~/.config/wezterm

# Windows (PowerShell)
git clone https://github.com/<your-username>/wezterm-config "$env:USERPROFILE\.config\wezterm"
```

WezTerm will automatically pick up `wezterm.lua` from this location.

> [!NOTE]
> On Windows, WezTerm looks for the config at `%USERPROFILE%\.config\wezterm\wezterm.lua` or `%USERPROFILE%\.wezterm.lua`. See the [WezTerm config docs](https://wezfurlong.org/wezterm/config/files.html) for all supported locations.

## Keyboard Shortcuts

| Action | macOS | Windows / Linux |
| --- | --- | --- |
| Close current pane | `Cmd+W` | `Ctrl+W` |
| New window | `Cmd+N` | `Ctrl+N` |
| New tab | `Cmd+T` | `Ctrl+T` |
| Show launcher | `Shift+Cmd+T` | `Shift+Ctrl+T` |

## Project Structure

```text
wezterm.lua          # Entry point — assembles all modules
config/
  keys.lua           # Platform-aware keyboard shortcuts
  launch_menu.lua    # Launch menu and default shell (Windows)
helpers/
  basic.lua          # OS detection utilities (is_win, is_mac, is_linux)
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

### Windows default shell

Edit `config/launch_menu.lua` to change the default program or add entries to the launch menu:

```lua
config.default_prog = { "pwsh.exe" }  -- change to "cmd.exe" or your preferred shell
```
