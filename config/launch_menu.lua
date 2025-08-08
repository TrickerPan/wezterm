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
            label = "Fedora",
            args = { "wsl.exe", "--distribution", "FedoraLinux-42", "--cd", "~/" }
        },
        {
            label = "Ubuntu",
            args = { "wsl.exe", "--distribution", "Ubuntu-24.04", "--cd", "~/" }
        },
    }
end

local M = {}

M.setup = function(config)
    config.launch_menu = launch_menu

    if (helper.is_win) then
        local wsl_domains = wezterm.default_wsl_domains()

        config.wsl_domains = wsl_domains
    end
end

return M
