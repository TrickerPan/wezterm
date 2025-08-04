local wezterm = require("wezterm")
local helpers = require("helpers.basic")

local act = wezterm.action

local keys = {}

if helpers.is_mac then
    local neovim_keys = {
        -- Save
        {
            key = "s",
            mods = "CMD",
            action = act.SendString('\x1b[115;9u')
        },
        -- Window navigation
        {
            key = "h",
            mods = "CMD",
            action = act.SendString('\x1b[104;9u')
        },
        {
            key = "j",
            mods = "CMD",
            action = act.SendString('\x1b[106;9u')
        },
        {
            key = "k",
            mods = "CMD",
            action = act.SendString('\x1b[107;9u')
        },
        {
            key = "l",
            mods = "CMD",
            action = act.SendString('\x1b[108;9u')
        },
        -- Window resize
        {
            key = "LeftArrow",
            mods = "CMD",
            action = act.SendString('\x1b[1;9D')
        },
        {
            key = "DownArrow",
            mods = "CMD",
            action = act.SendString('\x1b[1;9B')
        },
        {
            key = "UpArrow",
            mods = "CMD",
            action = act.SendString('\x1b[1;9A')
        },
        {
            key = "RightArrow",
            mods = "CMD",
            action = act.SendString('\x1b[1;9C')
        },
        -- Completion accept / Picker refine
        {
            key = "Space",
            mods = "CMD",
            action = act.SendString('\x1b[32;9u')
        },
        -- Completion scroll down / Picker scroll down
        {
            key = "f",
            mods = "CMD",
            action = act.SendString('\x1b[102;9u')
        },
        -- Completion scroll up / Picker scroll up
        {
            key = "b",
            mods = "CMD",
            action = act.SendString('\x1b[98;9u')
        },
        -- Toggle file explorer
        {
            key = "e",
            mods = "CMD|SHIFT",
            action = act.SendString('\x1b[101;10u')
        },
        -- Picker mark one
        {
            key = "x",
            mods = "CMD",
            action = act.SendString('\x1b[120;9u')
        },
        -- Picker mark all
        {
            key = "a",
            mods = "CMD",
            action = act.SendString('\x1b[97;9u')
        },
        -- Picker move start
        {
            key = "g",
            mods = "CMD",
            action = act.SendString('\x1b[103;9u')
        },
        -- Picker paste
        {
            key = "r",
            mods = "CMD",
            action = act.SendString('\x1b[114;9u')
        },
    }

    for _, key in ipairs(neovim_keys) do
        table.insert(keys, key)
    end
end

return {
    setup = function(config)
        config.keys = keys
    end,
}
