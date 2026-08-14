--#! Workspace navigation
-- Switching
hl.bind("SUPER + 1", hl.dsp.focus({ workspace = 1 }), { description = "Change to workspace 1" })
hl.bind("SUPER + 2", hl.dsp.focus({ workspace = 2 }), { description = "Change to workspace 2" })
hl.bind("SUPER + 3", hl.dsp.focus({ workspace = 3 }), { description = "Change to workspace 3" })
hl.bind("SUPER + 4", hl.dsp.focus({ workspace = 4 }), { description = "Change to workspace 4" })
hl.bind("SUPER + 5", hl.dsp.focus({ workspace = 5 }), { description = "Change to workspace 5" })
hl.bind("SUPER + 6", hl.dsp.focus({ workspace = 6 }), { description = "Change to workspace 6" })
hl.bind("SUPER + 7", hl.dsp.focus({ workspace = 7 }), { description = "Change to workspace 7" })
hl.bind("SUPER + 8", hl.dsp.focus({ workspace = 8 }), { description = "Change to workspace 8" })
hl.bind("SUPER + 9", hl.dsp.focus({ workspace = 9 }), { description = "Change to workspace 9" })
hl.bind("SUPER + 0", hl.dsp.focus({ workspace = 10 }), { description = "Change to workspace 10" })
hl.bind("SUPER+ALT + left", hl.dsp.focus({ monitor = "l" }), { description = "Focus monitor to left" })
hl.bind("SUPER+ALT + right", hl.dsp.focus({ monitor = "r" }), { description = "Focus monitor to right" })
hl.bind("SUPER+ALT + up", hl.dsp.focus({ monitor = "u" }), { description = "Focus monitor to up" })
hl.bind("SUPER+ALT + down", hl.dsp.focus({ monitor = "d" }), { description = "Focus monitor to down" })
hl.bind(
	"SUPER+CTRL+ALT + left",
	hl.dsp.workspace.move({ monitor = "l" }),
	{ description = "Move workspace to monitor to left" }
)
hl.bind(
	"SUPER+CTRL+ALT + right",
	hl.dsp.workspace.move({ monitor = "r" }),
	{ description = "Move workspace to monitor to right" }
)
hl.bind(
	"SUPER+CTRL+ALT + up",
	hl.dsp.workspace.move({ monitor = "u" }),
	{ description = "Move workspace to monitor to up" }
)
hl.bind(
	"SUPER+CTRL+ALT + down",
	hl.dsp.workspace.move({ monitor = "d" }),
	{ description = "Move workspace to monitor to down" }
)

hl.bind("SUPER+CTRL + Right", hl.dsp.focus({ workspace = "+1" }), { description = "Focus next workspace" })
hl.bind("SUPER+CTRL + Left", hl.dsp.focus({ workspace = -1 }), { description = "Focus previous workspace" })
hl.bind("SUPER + mouse_up", hl.dsp.focus({ workspace = "+1" }), { description = "Focus next workspace" })
hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = -1 }), { description = "Focus previous workspace" })
hl.bind("SUPER+CTRL + mouse_up", hl.dsp.focus({ workspace = "+1" }), { description = "Focus next workspace" })
hl.bind("SUPER+CTRL + mouse_down", hl.dsp.focus({ workspace = -1 }), { description = "Focus previous workspace" })
hl.bind("SUPER + Page_Down", hl.dsp.focus({ workspace = "+1" }), { description = "Focus next workspace" })
hl.bind("SUPER + Page_Up", hl.dsp.focus({ workspace = -1 }), { description = "Focus previous workspace" })
hl.bind("SUPER+CTRL + Page_Down", hl.dsp.focus({ workspace = "+1" }), { description = "Focus next workspace" })
hl.bind("SUPER+CTRL + Page_Up", hl.dsp.focus({ workspace = -1 }), { description = "Focus previous workspace" })

--#! Workspace management
-- Move window to workspace SUPER + ALT + [0-9]
hl.bind("SUPER+ALT + 1", hl.dsp.window.move({ workspace = 1 }), { description = "Move window to workspace 1" })
hl.bind("SUPER+ALT + 2", hl.dsp.window.move({ workspace = 2 }), { description = "Move window to workspace 2" })
hl.bind("SUPER+ALT + 3", hl.dsp.window.move({ workspace = 3 }), { description = "Move window to workspace 3" })
hl.bind("SUPER+ALT + 4", hl.dsp.window.move({ workspace = 4 }), { description = "Move window to workspace 4" })
hl.bind("SUPER+ALT + 5", hl.dsp.window.move({ workspace = 5 }), { description = "Move window to workspace 5" })
hl.bind("SUPER+ALT + 6", hl.dsp.window.move({ workspace = 6 }), { description = "Move window to workspace 6" })
hl.bind("SUPER+ALT + 7", hl.dsp.window.move({ workspace = 7 }), { description = "Move window to workspace 7" })
hl.bind("SUPER+ALT + 8", hl.dsp.window.move({ workspace = 8 }), { description = "Move window to workspace 8" })
hl.bind("SUPER+ALT + 9", hl.dsp.window.move({ workspace = 9 }), { description = "Move window to workspace 9" })
hl.bind("SUPER+ALT + 0", hl.dsp.window.move({ workspace = 10 }), { description = "Move window to workspace 10" })

--#! Window management
-- Focusing
hl.bind("SUPER + Left", hl.dsp.focus({ direction = "left" }), { description = "Change window focus left" })
hl.bind("SUPER + Right", hl.dsp.focus({ direction = "right" }), { description = "Change window focus right" })
hl.bind("SUPER + Up", hl.dsp.focus({ direction = "up" }), { description = "Change window focus up" })
hl.bind("SUPER + Down", hl.dsp.focus({ direction = "down" }), { description = "Change window focus down" })
hl.bind("SUPER + BracketLeft", hl.dsp.focus({ direction = "left" }), { description = "Change window focus left" })
hl.bind("SUPER + BracketRight", hl.dsp.focus({ direction = "right" }), { description = "Change window focus right" })
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { description = "Move window around" })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { description = "Resize window" })
hl.bind("SUPER + Q", hl.dsp.window.close(), { description = "Close active window" })
hl.bind("SUPER + S", hl.dsp.layout("swapwithmaster master"))
hl.bind("SUPER + J", hl.dsp.layout("cyclenext"))
hl.bind("SUPER + K", hl.dsp.layout("cycleprev"))

--#! Window arrangement
hl.bind("SUPER+SHIFT + Left", hl.dsp.window.move({ direction = "l" }), { description = "Move window left" })
hl.bind("SUPER+SHIFT + Right", hl.dsp.window.move({ direction = "r" }), { description = "Move window right" })
hl.bind("SUPER+SHIFT + Up", hl.dsp.window.move({ direction = "u" }), { description = "Move window up" })
hl.bind("SUPER+SHIFT + Down", hl.dsp.window.move({ direction = "d" }), { description = "Move window down" })
-- Window split ratio
hl.bind("SUPER + Minus", hl.dsp.layout("splitratio -0.1"), { description = "Decrease window split", repeating = true })
hl.bind("SUPER + Equal", hl.dsp.layout("splitratio +0.1"), { description = "Increase window split", repeating = true })
hl.bind(
	"SUPER + Semicolon",
	hl.dsp.layout("splitratio -0.1"),
	{ description = "Decrease window split", repeating = true }
)
hl.bind(
	"SUPER + Apostrophe",
	hl.dsp.layout("splitratio +0.1"),
	{ description = "Increase window split", repeating = true }
)
-- Positioning mode
hl.bind("SUPER+ALT + Space", hl.dsp.window.float({ action = "toggle" }), { description = "Toggle float window" })
hl.bind("SUPER + F", hl.dsp.window.fullscreen(0), { description = "Toggle fullscreen on window" })
--change the splits
hl.bind("SUPER + Y", hl.dsp.layout("togglesplit"), { description = "Change split direction" })

hl.bind(
	"SUPER+CTRL+SHIFT + Right",
	hl.dsp.window.move({ workspace = "+1" }),
	{ description = "Move window to next workspace" }
)
hl.bind(
	"SUPER+CTRL+SHIFT + Left",
	hl.dsp.window.move({ workspace = -1 }),
	{ description = "Move window to previous workspace" }
)
hl.bind("SUPER+CTRL + BracketLeft", hl.dsp.focus({ workspace = -1 }), { description = "Focus previous workspace" })
hl.bind("SUPER+CTRL + BracketRight", hl.dsp.focus({ workspace = "+1" }), { description = "Focus next workspace" })
hl.bind("SUPER + P", hl.dsp.window.pin(), { description = "Pin window" })

hl.bind("ALT + Tab", hl.dsp.window.cycle_next(""), { description = "Go to next window" })
hl.bind("ALT + Tab", hl.dsp.window.bring_to_top())
