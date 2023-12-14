local wezterm = require("wezterm")

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
    key = "T",
    mods = "CTRL|SHIFT",
    action = act.SplitPane {
      direction = "Down",
      command = {
        domain = "CurrentPaneDomain"
      },
      size = { Percent = 20 },
    },
  },
  {
    key = "W",
    mods = "CTRL|SHIFT",
    action = act.CloseCurrentPane { confirm = true },
  },
  {
    key = "E",
    mods = "CTRL|SHIFT",
    action = act.RotatePanes 'Clockwise',
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

return function(config)
  config.keys = keys
end
