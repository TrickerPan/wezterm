local wezterm = require('wezterm')
local helper = require("helpers.basic")

local launch_menu = {}

if helper.is_win then
    launch_menu = {
        {
            label = "pwsh",
            args = { "pwsh.exe" }
        },
        {
            label = "Ubuntu",
            args = { "wsl.exe", "--cd", "~" }
        }
    }
end

local M = {}

M.setup = function(config)
    config.launch_menu = launch_menu

    if (helper.is_win) then
        config.default_prog = { "pwsh.exe" }
        -- config.wsl_domains  = wezterm.default_wsl_domains()
    end
end

return M
