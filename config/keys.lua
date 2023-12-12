local wezterm = require("wezterm")
local unix = require("utils.unix")
local win = require("utils.win")

local act = wezterm.action

-- Bindings for all platforms
local keys = {
  -- Pane management
  {
    key = "H",
    mods = "CTRL|SHIFT",
    action = act.SplitHorizontal { domain = "CurrentPaneDomain" },
  },
  {
    key = "V",
    mods = "CTRL|SHIFT",
    action = act.SplitVertical { domain = "CurrentPaneDomain" },
  },
  {
    key = "W",
    mods = "CTRL|SHIFT",
    action = act.CloseCurrentPane { confirm = true },
  },
  {
    key = "h",
    mods = "CTRL",
    action = act.ActivatePaneDirection "Left",
  },
  {
    key = "j",
    mods = "CTRL",
    action = act.ActivatePaneDirection "Down",
  },
  {
    key = "k",
    mods = "CTRL",
    action = act.ActivatePaneDirection "Up",
  },
  {
    key = "l",
    mods = "CTRL",
    action = act.ActivatePaneDirection "Right",
  },
  -- Debug mode
  {
    key = "D",
    mods = "CTRL|SHIFT",
    action = act.ShowDebugOverlay,
  },
}

if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
  win.insert_keys(keys)
else
  unix.insert_keys(keys)
end

return keys
