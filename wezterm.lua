local wezterm = require("wezterm")
local keys = require("config.keys")

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

-- Normal
config.term = "wezterm"
config.automatically_reload_config = true
config.window_close_confirmation = "NeverPrompt"
config.enable_kitty_keyboard = true

-- Appearance
config.color_scheme = "Tokyo Night"
-- config.color_scheme = "Catppuccin Mocha"
config.font_size = 13
config.font = wezterm.font_with_fallback {
    "Monaspace Neon",
    "Menlo",
    "Monaco",
    "Courier New",
    "STHeiti",
}

-- Shortcuts
keys.setup(config)

-- Launch menu
local status, launch_menu = pcall(require, "config.launch_menu")
if status then
    config.launch_menu = launch_menu
end

return config
