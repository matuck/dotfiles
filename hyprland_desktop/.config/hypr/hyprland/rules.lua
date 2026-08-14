-- ######## Window rules ########
-- windowrule = opacity 0.89 override 0.89 override, .* # Applies transparency to EVERY WINDOW

hl.window_rule({
	match = {
		title = "^(Steam)$",
	},
	float = true,
})

hl.window_rule({
	match = {
		class = "^(com.meowrch.HotkeyHub)$",
	},
	float = true,
})

hl.window_rule({
	match = {
		class = "^(bluebubbles)$",
	},
	float = true,
})

hl.window_rule({
	match = { workspace = "special:Scratch 1" },
	float = true,
})

hl.window_rule({
	match = { workspace = "special:Scratch 2" },
	float = true,
})

hl.window_rule({
	match = { workspace = "special:Scratch 3" },
	float = true,
})

hl.window_rule({
	match = { workspace = "special:Scratch 4" },
	float = true,
})

hl.window_rule({
	match = { workspace = "special:Scratch 5" },
	float = true,
})

hl.window_rule({
	match = {
		title = "^((Microsoft Teams)(.*)|(Outlook)(.*))$",
	},
	workspace = "special:Comms",
})

hl.window_rule({
	match = {
		title = "^(((Spotify)(.*))|(Strawberry)(.*))$",
	},
	workspace = "special:Music",
})

hl.window_rule({
	match = {
		title = "^(Lemonade App)(.*)$",
	},
	float = true,
	workspace = "special:AI",
})
hl.window_rule({
	match = {
		title = "^(Alpaca)(.*)$",
	},
	float = true,
	workspace = "special:AI",
})

hl.window_rule({
	match = {
		title = "^Calculator$",
	},
	float = true,
})

hl.window_rule({
	match = {
		title = "^(guifetch)$",
	},
	float = true,
})

hl.window_rule({
	match = {
		title = "^(Android Emulator)(.*)$",
	},
	float = true,
})

hl.window_rule({
	match = {
		title = "^(Emulator)(.*)$",
	},
	float = true,
})

hl.window_rule({
	match = {
		title = "^(blueman-manager)(.*)$",
	},
	float = true,
})

hl.window_rule({
	match = {
		title = "^(Network Displays)(.*)$",
	},
	float = true,
})

hl.window_rule({
	match = {
		title = "^(Volume Control)(.*)$",
	},
	float = true,
})

hl.window_rule({
	match = {
		title = "^(Volume Control)(.*)$",
	},
	size = "80% 80%",
})

hl.window_rule({
	match = {
		title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$",
	},
	float = true,
})

hl.window_rule({
	match = {
		title = "^(Open File)(.*)$",
	},
	center = true,
})
hl.window_rule({
	match = {
		title = "^(Select a File)(.*)$",
	},
	center = true,
})

hl.window_rule({
	match = {
		title = "^(Choose wallpaper)(.*)$",
	},
	center = true,
})

hl.window_rule({
	match = {
		title = "^(Open Folder)(.*)$",
	},
	center = true,
})

hl.window_rule({
	match = {
		title = "^(Save As)(.*)$",
	},
	center = true,
})

hl.window_rule({
	match = {
		title = "^(Library)(.*)$",
	},
	center = true,
})

hl.window_rule({
	match = {
		title = "^(File Upload)(.*)$",
	},
	center = true,
})

-- Dialogs
hl.window_rule({
	match = {
		title = "^(Open File)(.*)$",
	},
	float = true,
})

hl.window_rule({
	match = {
		title = "^(Select a File)(.*)$",
	},
	float = true,
})

hl.window_rule({
	match = {
		title = "^(Choose wallpaper)(.*)$",
	},
	float = true,
})

hl.window_rule({
	match = {
		title = "^(Open Folder)(.*)$",
	},
	float = true,
})

hl.window_rule({
	match = {
		title = "^(Save As)(.*)$",
	},
	float = true,
})

hl.window_rule({
	match = {
		title = "^(Library)(.*)$",
	},
	float = true,
})

hl.window_rule({
	match = {
		title = "^(File Upload)(.*)$",
	},
	float = true,
})

-- Tearing
--windowrulev2=immediate,.*\.exe
hl.window_rule({
	match = {
		class = "(steam_app)",
	},
	immediate = true,
})

-- No shadow for tiled windows
--windowrule = noshadow on,floating:0

-- ######## Layer rules ########
--layerrule = xray 1, .*
-- layerrule = no_anim on, match:namespace .*

--hl.workspace_rule( {workspace = "99", monitor= "eDP-1", default = true } )
