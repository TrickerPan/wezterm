local wezterm = require("wezterm")

local M = {}

M.is_win = string.find(wezterm.target_triple, 'windows') ~= nil
M.is_mac = string.find(wezterm.target_triple, 'apple') ~= nil
M.is_linux = string.find(wezterm.target_triple, 'linux') ~= nil
M.is_unix = M.is_linux or M.is_mac

return M
