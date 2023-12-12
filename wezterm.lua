local wezterm = require("wezterm")
local unix = require("utils.unix")
local win = require("utils.win")

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
  win.init(config)
else
  unix.init(config)
end

-- Normal
config.automatically_reload_config = false

-- Appearance
config.color_scheme = "Tokyo Night"
config.font = wezterm.font "JetBrains Mono"

-- Shortcuts
local keys = require("keys")
config.keys = keys

return config
