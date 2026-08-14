--# Special
hl.bind("SUPER + CTRL + 1", hl.dsp.workspace.toggle_special("Scratch 1"), { description = "Toggle Scratch 1 workspace" })
hl.bind("SUPER + CTRL + 2", hl.dsp.workspace.toggle_special("Scratch 2"), { description = "Toggle Scratch 2 workspace" })
hl.bind("SUPER + CTRL + 3", hl.dsp.workspace.toggle_special("Scratch 3"), { description = "Toggle Scratch 3 workspace" })
hl.bind("SUPER + CTRL + 4", hl.dsp.workspace.toggle_special("Scratch 4"), { description = "Toggle Scratch 4 workspace" })
hl.bind("SUPER + CTRL + 5", hl.dsp.workspace.toggle_special("Scratch 5"), { description = "Toggle Scratch 5 workspace" })
hl.bind("SUPER + A", hl.dsp.workspace.toggle_special("AI"), { description = "Toggle AI workspace" })
hl.bind("SUPER + M", hl.dsp.workspace.toggle_special("Music"), { description = "Toggle Music workspace" })
hl.bind("SUPER + C", hl.dsp.workspace.toggle_special("Comms"), { description = "Toggle Comms workspace" })


hl.bind(
	"SUPER+ALT + CTRL+ 1",
	hl.dsp.window.move({ workspace = "special:Scratch 1", silent = true }),
	{ description = "Move window to Scratch 1" }
)

hl.bind(
	"SUPER+ALT + CTRL + 2",
	hl.dsp.window.move({ workspace = "special:Scratch 2", silent = true }),
	{ description = "Move window to Scratch 2" }
)

hl.bind(
	"SUPER+ALT + CTRL + 3",
	hl.dsp.window.move({ workspace = "special:Scratch 3", silent = true }),
	{ description = "Move window to Scratch 3" }
)

hl.bind(
	"SUPER+ALT + CTRL + 4",
	hl.dsp.window.move({ workspace = "special:Scratch 4", silent = true }),
	{ description = "Move window to Scratch 4" }
)

hl.bind(
	"SUPER+ALT + CTRL + 5",
	hl.dsp.window.move({ workspace = "special:Scratch 5", silent = true }),
	{ description = "Move window to Scratch 5" }
)

hl.bind(
	"SUPER+ALT + C",
	hl.dsp.window.move({ workspace = "special:Comms", silent = true }),
	{ description = "Move window to Comms" }
)
hl.bind(
	"SUPER+ALT + A",
	hl.dsp.window.move({ workspace = "special:AI", silent = true }),
	{ description = "Move window to AI" }
)
