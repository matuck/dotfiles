--package.path = package.path .. ";/home/mitchtuck/.config/hypr/hyprland/?.lua"

-- Source: ~/.config/hypr/monitors.conf — convert this file to Lua and ensure it is on Lua's package.path.
--
require("local")
require("hyprland/env")
require("hyprland/execs")
require("hyprland/general")
require("hyprland/rules")
require("hyprland/colors")
require("hyprland/keybinds")
require("hyprland/gloview")
require("hyprland/hyprbars")
require("monitors")

