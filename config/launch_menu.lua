local helper = require("helpers.basic")

local launch_menu = {}

if helper.is_win then
    launch_menu = {
        {
            label = "pwsh",
            args = { "pwsh.exe" }
        }
    }
end

local M = {}

M.setup = function(config)
    config.launch_menu = launch_menu

    if (helper.is_win) then
        config.default_prog = { "pwsh.exe" }
    end
end

return M
