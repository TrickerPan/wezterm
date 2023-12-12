local wezterm = require("wezterm")

local act = wezterm.action

local keys = {
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

local function insert_keys(config)
  for _, key in ipairs(keys) do
    table.insert(config.keys, key)
  end
end

return function(config)
  config.default_prog = { "zsh" }
  insert_keys(config)
end
