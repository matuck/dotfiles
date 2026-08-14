hl.bind(
	"SUPER+SHIFT + N",
	hl.dsp.exec_cmd(
		'playerctl next || playerctl position `bc <<< "100 * $(playerctl metadata mpris:length) / 1000000 / 100"`'
	),
	{ description = "Next song/video" }
)
hl.bind(
	"XF86AudioNext",
	hl.dsp.exec_cmd(
		'playerctl next || playerctl position `bc <<< "100 * $(playerctl metadata mpris:length) / 1000000 / 100"`'
	),
	{ description = "Next song/video", locked = true }
)
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { description = "Previous song/video", locked = true })
hl.bind("SUPER+SHIFT+ALT + mouse:275", hl.dsp.exec_cmd("playerctl previous"), { description = "Previous song/video" })
hl.bind(
	"SUPER+SHIFT+ALT + mouse:276",
	hl.dsp.exec_cmd(
		'playerctl next || playerctl position `bc <<< "100 * $(playerctl metadata mpris:length) / 1000000 / 100"`'
	),
	{ description = "Next song/video" }
)
hl.bind("SUPER+SHIFT + B", hl.dsp.exec_cmd("playerctl previous"), { description = "Previous song/video" })
hl.bind("SUPER+SHIFT + P", hl.dsp.exec_cmd("playerctl play-pause"), { description = "Play/Pause song/video" })
hl.bind(
	"XF86AudioPlay",
	hl.dsp.exec_cmd("playerctl play-pause"),
	{ description = "Play/Pause song/video", locked = true }
)
hl.bind(
	"XF86AudioPause",
	hl.dsp.exec_cmd("playerctl play-pause"),
	{ description = "Play/Pause song/video", locked = true }
)
