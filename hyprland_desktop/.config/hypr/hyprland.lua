package.path = package.path .. ";/home/mitchtuck/.config/hypr/hyprland/?.lua"

-- Source: ~/.config/hypr/monitors.conf — convert this file to Lua and ensure it is on Lua's package.path.
require("monitors")
require("env")
require("execs")
require("general")
require("rules")
require("colors")
require("keybinds")
