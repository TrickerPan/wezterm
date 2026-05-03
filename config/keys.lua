local wezterm = require("wezterm")
local helpers = require("helpers.basic")

local act = wezterm.action

local keys = {}

if helpers.is_mac then
    keys = {
        -- Copy / Paste
        {
            key = "c",
            mods = "CMD",
            action = act.CopyTo("Clipboard")
        },
        {
            key = "v",
            mods = "CMD",
            action = act.PasteFrom("Clipboard")
        },
        -- Window / Tab basics
        {
            key = "w",
            mods = "CMD",
            action = act.CloseCurrentTab({ confirm = true })
        },
        {
            key = "w",
            mods = "CMD|SHIFT",
            action = act.CloseCurrentPane({ confirm = true })
        },
        {
            key = "n",
            mods = "CMD",
            action = act.SpawnWindow
        },
        {
            key = "t",
            mods = "CMD",
            action = act.SpawnTab('CurrentPaneDomain')
        },
        {
            key = "T",
            mods = "CMD|SHIFT",
            action = act.ShowLauncher
        },
        -- Tab switching
        {
            key = "[",
            mods = "CMD",
            action = act.ActivateTabRelative(-1)
        },
        {
            key = "]",
            mods = "CMD",
            action = act.ActivateTabRelative(1)
        },
        -- Pane splitting
        {
            key = "'",
            mods = "CMD",
            action = act.SplitHorizontal { domain = "CurrentPaneDomain" }
        },
        {
            key = "\"",
            mods = "CMD|SHIFT",
            action = act.SplitVertical { domain = "CurrentPaneDomain" }
        },
        -- Pane navigation
        {
            key = "LeftArrow",
            mods = "CMD|SHIFT",
            action = act.ActivatePaneDirection("Left")
        },
        {
            key = "RightArrow",
            mods = "CMD|SHIFT",
            action = act.ActivatePaneDirection("Right")
        },
        {
            key = "UpArrow",
            mods = "CMD|SHIFT",
            action = act.ActivatePaneDirection("Up")
        },
        {
            key = "DownArrow",
            mods = "CMD|SHIFT",
            action = act.ActivatePaneDirection("Down")
        },
        -- Pane resizing
        {
            key = "RightArrow",
            mods = "CMD|SHIFT|OPT",
            action = act.AdjustPaneSize { "Right", 5 }
        },
        {
            key = "LeftArrow",
            mods = "CMD|SHIFT|OPT",
            action = act.AdjustPaneSize { "Left", 5 }
        },
        {
            key = "UpArrow",
            mods = "CMD|SHIFT|OPT",
            action = act.AdjustPaneSize { "Up", 5 }
        },
        {
            key = "DownArrow",
            mods = "CMD|SHIFT|OPT",
            action = act.AdjustPaneSize { "Down", 5 }
        },
        -- Copy mode
        {
            key = "X",
            mods = "CMD|SHIFT",
            action = act.ActivateCopyMode
        },
        -- Quick select
        {
            key = " ",
            mods = "CMD|SHIFT",
            action = act.QuickSelect
        },
        -- Command palette
        {
            key = "P",
            mods = "CMD|SHIFT",
            action = act.ActivateCommandPalette
        },
        -- Search
        {
            key = "f",
            mods = "CMD",
            action = act.Search({ CaseSensitiveString = "" })
        },
    }
else
    keys = {
        -- Copy / Paste
        {
            key = "C",
            mods = "CTRL|SHIFT",
            action = act.CopyTo("Clipboard")
        },
        {
            key = "V",
            mods = "CTRL|SHIFT",
            action = act.PasteFrom("Clipboard")
        },
        -- Window / Tab / Pane basics
        {
            key = "w",
            mods = "CTRL",
            action = act.CloseCurrentTab({ confirm = true })
        },
        {
            key = "w",
            mods = "CTRL|SHIFT",
            action = act.CloseCurrentPane({ confirm = true })
        },
        {
            key = "n",
            mods = "CTRL",
            action = act.SpawnWindow
        },
        {
            key = "t",
            mods = "CTRL",
            action = act.SpawnTab('CurrentPaneDomain')
        },
        {
            key = "T",
            mods = "CTRL|SHIFT",
            action = act.ShowLauncher
        },
        -- Tab switching
        {
            key = "[",
            mods = "CTRL",
            action = act.ActivateTabRelative(-1)
        },
        {
            key = "]",
            mods = "CTRL",
            action = act.ActivateTabRelative(1)
        },
        -- Pane splitting
        {
            key = "'",
            mods = "CTRL",
            action = act.SplitHorizontal { domain = "CurrentPaneDomain" }
        },
        {
            key = "\"",
            mods = "CTRL|SHIFT",
            action = act.SplitVertical { domain = "CurrentPaneDomain" }
        },
        -- Pane navigation
        {
            key = "LeftArrow",
            mods = "CTRL|SHIFT",
            action = act.ActivatePaneDirection("Left")
        },
        {
            key = "RightArrow",
            mods = "CTRL|SHIFT",
            action = act.ActivatePaneDirection("Right")
        },
        {
            key = "UpArrow",
            mods = "CTRL|SHIFT",
            action = act.ActivatePaneDirection("Up")
        },
        {
            key = "DownArrow",
            mods = "CTRL|SHIFT",
            action = act.ActivatePaneDirection("Down")
        },
        -- Pane resizing
        {
            key = "RightArrow",
            mods = "CTRL|SHIFT|ALT",
            action = act.AdjustPaneSize { "Right", 5 }
        },
        {
            key = "LeftArrow",
            mods = "CTRL|SHIFT|ALT",
            action = act.AdjustPaneSize { "Left", 5 }
        },
        {
            key = "UpArrow",
            mods = "CTRL|SHIFT|ALT",
            action = act.AdjustPaneSize { "Up", 5 }
        },
        {
            key = "DownArrow",
            mods = "CTRL|SHIFT|ALT",
            action = act.AdjustPaneSize { "Down", 5 }
        },
        -- Copy mode
        {
            key = "X",
            mods = "CTRL|SHIFT",
            action = act.ActivateCopyMode
        },
        -- Quick select
        {
            key = " ",
            mods = "CTRL|SHIFT",
            action = act.QuickSelect
        },
        -- Command palette
        {
            key = "P",
            mods = "CTRL|SHIFT",
            action = act.ActivateCommandPalette
        },
        -- Search
        {
            key = "f",
            mods = "CTRL",
            action = act.Search({ CaseSensitiveString = "" })
        },
    }
end

return {
    setup = function(config)
        config.keys = keys
    end,
}
