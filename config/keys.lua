local wezterm = require("wezterm")
local helpers = require("helpers.basic")

local act = wezterm.action

local keys = {}

if helpers.is_mac then
    keys = {
        -- Window / Pane basics
        { key = "w", mods = "CMD|SHIFT", action = act.CloseCurrentPane { confirm = true } },
        { key = "L", mods = "CMD|SHIFT", action = act.ShowLauncher },
        -- Tab switching: Cmd+Shift+[ / Cmd+Shift+] (WezTerm default)
        -- Pane splitting
        { key = "d", mods = "CMD", action = act.SplitHorizontal { domain = "CurrentPaneDomain" } },
        { key = "d", mods = "CMD|SHIFT", action = act.SplitVertical { domain = "CurrentPaneDomain" } },
        -- Pane navigation
        { key = "LeftArrow", mods = "CMD|OPT", action = act.ActivatePaneDirection "Left" },
        { key = "RightArrow", mods = "CMD|OPT", action = act.ActivatePaneDirection "Right" },
        { key = "UpArrow", mods = "CMD|OPT", action = act.ActivatePaneDirection "Up" },
        { key = "DownArrow", mods = "CMD|OPT", action = act.ActivatePaneDirection "Down" },
        -- Pane resizing (5 cells per step)
        { key = "LeftArrow", mods = "CTRL|CMD", action = act.AdjustPaneSize { "Left", 5 } },
        { key = "RightArrow", mods = "CTRL|CMD", action = act.AdjustPaneSize { "Right", 5 } },
        { key = "UpArrow", mods = "CTRL|CMD", action = act.AdjustPaneSize { "Up", 5 } },
        { key = "DownArrow", mods = "CTRL|CMD", action = act.AdjustPaneSize { "Down", 5 } },
        -- Copy mode
        { key = "X", mods = "CMD|SHIFT", action = act.ActivateCopyMode },
        -- Quick select
        { key = " ", mods = "CMD|SHIFT", action = act.QuickSelect },
        -- Command palette
        { key = "P", mods = "CMD|SHIFT", action = act.ActivateCommandPalette },
        -- Search
        { key = "f", mods = "CMD", action = act.Search { CaseSensitiveString = "" } },
    }
else
    keys = {
        -- Window / Tab basics
        { key = "n", mods = "CTRL", action = act.SpawnWindow },
        { key = "t", mods = "CTRL", action = act.SpawnTab "CurrentPaneDomain" },
        { key = "w", mods = "CTRL", action = act.CloseCurrentTab { confirm = true } },
        { key = "w", mods = "CTRL|SHIFT", action = act.CloseCurrentPane { confirm = true } },
        { key = "L", mods = "CTRL|SHIFT", action = act.ShowLauncher },
        -- Tab switching: Ctrl+Tab / Ctrl+Shift+Tab (WezTerm default)
        -- Pane splitting
        { key = "+", mods = "SHIFT|ALT", action = act.SplitHorizontal { domain = "CurrentPaneDomain" } },
        { key = "_", mods = "SHIFT|ALT", action = act.SplitVertical { domain = "CurrentPaneDomain" } },
        -- Pane navigation
        { key = "LeftArrow", mods = "ALT", action = act.ActivatePaneDirection "Left" },
        { key = "RightArrow", mods = "ALT", action = act.ActivatePaneDirection "Right" },
        { key = "UpArrow", mods = "ALT", action = act.ActivatePaneDirection "Up" },
        { key = "DownArrow", mods = "ALT", action = act.ActivatePaneDirection "Down" },
        -- Pane resizing (5 cells per step)
        { key = "LeftArrow", mods = "SHIFT|ALT", action = act.AdjustPaneSize { "Left", 5 } },
        { key = "RightArrow", mods = "SHIFT|ALT", action = act.AdjustPaneSize { "Right", 5 } },
        { key = "UpArrow", mods = "SHIFT|ALT", action = act.AdjustPaneSize { "Up", 5 } },
        { key = "DownArrow", mods = "SHIFT|ALT", action = act.AdjustPaneSize { "Down", 5 } },
        -- Search
        { key = "f", mods = "CTRL", action = act.Search { CaseSensitiveString = "" } },
        -- Copy mode (Ctrl+Shift+X), Quick select (Ctrl+Shift+Space),
        -- Command palette (Ctrl+Shift+P): WezTerm defaults
    }
end

return {
    setup = function(config)
        config.keys = keys
    end,
}
