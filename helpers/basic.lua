local wezterm = require("wezterm")

local module = {}

module.is_win = wezterm.target_triple == 'x86_64-pc-windows-msvc'
module.is_unix = not module.is_win

return module
