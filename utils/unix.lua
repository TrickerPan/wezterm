local wezterm = require("wezterm")

local act = wezterm.action

local module = {}
local config = {}

function module.init(config)
  -- Something happens here
end

config.keys = {
  -- Window management
  {
    key = "/",
    mods = "CMD",
    action = act.ShowLauncher,
  },
  -- Tab management
  {
    key = "[",
    mods = "CMD",
    action = act.ActivateTabRelative(-1),
  },
  {
    key = "]",
    mods = "CMD",
    action = act.ActivateTabRelative(1),
  },
}

function module.insert_keys(keys)
  for _, key in ipairs(config.keys) do
    table.insert(keys, key)
  end
end

return module
