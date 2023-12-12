local wezterm = require("wezterm")

local act = wezterm.action

local module = {}
local config = {}

function module.init(config)
  -- Something happens here
end

config.keys = {
  -- Copy and paste
  {
    key = "c",
    mods = "ALT",
    action = act.CopyTo("Clipboard"),
  },
  {
    key = "v",
    mods = "ALT",
    action = act.PasteFrom("Clipboard"),
  },
  -- Search
  {
    key = "f",
    mods = "ALT",
    action = act.Search { CaseSensitiveString = "" },
  },
  -- Window management
  {
    key = "n",
    mods = "ALT",
    action = act.SpawnWindow,
  },
  {
    key = "q",
    mods = "ALT",
    action = act.QuitApplication,
  },
  {
    key = "h",
    mods = "ALT",
    action = act.Hide,
  },
  {
    key = "Enter",
    mods = "WIN",
    action = act.ToggleFullScreen,
  },
  {
    key = "/",
    mods = "ALT",
    action = act.ShowLauncher,
  },
  -- Tab management
  {
    key = "[",
    mods = "ALT",
    action = act.ActivateTabRelative(-1),
  },
  {
    key = "]",
    mods = "ALT",
    action = act.ActivateTabRelative(1),
  },
  {
    key = "t",
    mods = "ALT",
    action = act.SpawnTab "CurrentPaneDomain",
  },
  {
    key = "w",
    mods = "ALT",
    action = act.CloseCurrentTab { confirm = true },
  },
  -- Pane management
  {
    key = "LeftArrow",
    mods = "CTRL",
    action = act.ActivatePaneDirection "Left",
  },
  {
    key = "DownArrow",
    mods = "CTRL",
    action = act.ActivatePaneDirection "Down",
  },
  {
    key = "UpArrow",
    mods = "CTRL",
    action = act.ActivatePaneDirection "Up",
  },
  {
    key = "RightArrow",
    mods = "CTRL",
    action = act.ActivatePaneDirection "Right",
  },
}

-- Tab management
for i = 1, 9 do
  table.insert(config.keys, {
    key = tostring(i),
    mods = "ALT",
    action = act.ActivateTab(i - 1),
  })
end

function module.insert_keys(keys)
  for _, key in ipairs(config.keys) do
    table.insert(keys, key)
  end
end

return module
