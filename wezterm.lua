local wezterm = require("wezterm")
local keys = require("config.keys")
local launch_menu = require("config.launch_menu")
local mouse = require("config.mouse")

local config = wezterm.config_builder()

-- Normal
config.automatically_reload_config = true
config.window_close_confirmation = "NeverPrompt"
config.warn_about_missing_glyphs = false

-- Appearance
config.color_scheme = "Tokyo Night"
-- config.color_scheme = "Catppuccin Mocha"
config.font_size = 13
config.font = wezterm.font_with_fallback {
    {
        family = "Monaspace Neon",
        harfbuzz_features = { "calt", "liga", "ss01", "ss02", "ss03", "ss04", "ss05", "ss06", "ss07", "ss08", "ss09" }
    },
    -- Windows
    "Consolas",
    -- macOS
    "Menlo",
    "Monaco",
    -- Linux
    "Ubuntu Mono",
    "DejaVu Sans Mono",
    -- Universal fallback
    "Courier New",
    -- CJK: Windows
    "Microsoft YaHei",
    -- CJK: macOS
    "PingFang SC",
    "STHeiti",
    -- CJK: Linux
    "WenQuanYi Micro Hei",
    "Noto Sans CJK SC",
}

-- Shortcuts
keys.setup(config)

-- Mouse
mouse.setup(config)

-- Launch menu
launch_menu.setup(config)

return config
