local wezterm = require("wezterm")

local act = wezterm.action
local call = wezterm.action_callback

local M = {}

local function smart_right_click(window, pane)
    local has_selection = window:get_selection_text_for_pane(pane) ~= ""
    if has_selection then
        window:perform_action(act.Multiple({ act.CopyTo("Clipboard"), act.ClearSelection }), pane)
    else
        window:perform_action(act.PasteFrom("Clipboard"), pane)
    end
end

M.setup = function(config)
    -- config.disable_default_mouse_bindings = true
    config.mouse_bindings = {
        {
            event = { Down = { streak = 1, button = "Right" } },
            mods = "NONE",
            action = call(smart_right_click),
        },
    }
end

return M
