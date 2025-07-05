local wezterm = require("wezterm")
local helpers = require("helpers.basic")
local apply_keys = require("config.keys")
local apply_unix = require("config.unix")
local apply_win = require("config.win")

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Normal
config.automatically_reload_config = false
config.window_close_confirmation = "NeverPrompt"

-- Appearance
config.color_scheme = "Tokyo Night"
config.font_size = 12
config.font = wezterm.font_with_fallback {
  "Monaspace Neon",
  "Menlo",
  "Monaco",
  "Courier New",
  "monospace",
  "STHeiti",
}

-- Shortcuts
apply_keys(config)

-- Launch menu
local status, launch_menu = pcall(require, "config.launch_menu")
if status then
  config.launch_menu = launch_menu
end

if helpers.is_win then
  apply_win(config)
else
  apply_unix(config)
end

return config
