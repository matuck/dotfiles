hl.bind("SUPER + SHIFT + K", hl.dsp.exec_cmd("gnome-network-displays"), { description = "Launch Gnome Network Displays" })
hl.bind("SUPER + T", hl.dsp.exec_cmd("kitty"), { description = "Launch Kitty/Terminal" })
hl.bind(
	"SUPER+ALT + T",
	hl.dsp.exec_cmd("gio launch $(grep -i teams ~/.local/share/applications/*|awk -F ':' '{print $1}')"),
	{ description = "Launch Microsoft Teams" }
)
hl.bind("SUPER+CTRL+ALT + T", hl.dsp.exec_cmd("flatpak run com.todoist.Todoist"), { description = "Launch Todoist" })
hl.bind(
	"SUPER+ALT + O",
	hl.dsp.exec_cmd("gio launch $(grep -i outlook ~/.local/share/applications/*|awk -F ':' '{print $1}')"),
	{ description = "Launch Microsoft Outlook" }
)
hl.bind("SUPER + Z", hl.dsp.exec_cmd("zeditor"), { description = "Launch Zed" })
hl.bind("SUPER+CTRL + C", hl.dsp.exec_cmd("code"), { description = "Launch VSCode" })
hl.bind("SUPER + E", hl.dsp.exec_cmd("nemo"), { description = "Launch Nemo File Explorer" })
hl.bind("SUPER+ALT + E", hl.dsp.exec_cmd("thunar"), { description = "Launch Thunar File Explorer" })
hl.bind("SUPER+CTRL + W", hl.dsp.exec_cmd("firefox"), { description = "Launch Firefox" })
hl.bind("SUPER + W", hl.dsp.exec_cmd("zen-browser"), { description = "Launch Zen" })
hl.bind("SUPER + X", hl.dsp.exec_cmd("NotepadNext"), { description = "Launch NotepadNext" })
hl.bind("SUPER+SHIFT + W", hl.dsp.exec_cmd("libreoffice"), { description = "Launch Libre Office" })
hl.bind(
	"SUPER + I",
	hl.dsp.exec_cmd('XDG_CURRENT_DESKTOP="gnome" gnome-control-center'),
	{ description = "Launch Gnome settings" }
)
hl.bind("SUPER+CTRL + V", hl.dsp.exec_cmd("pavucontrol"), { description = "Launch Volume mixer" })
hl.bind("SUPER+CTRL+SHIFT + V", hl.dsp.exec_cmd("easyeffects"), { description = "Launch Easy Effects" })
hl.bind("CTRL+SHIFT + Escape", hl.dsp.exec_cmd("resources"), { description = "Launch System Resource Monitor" })
hl.bind("SUPER+CTRL + M", hl.dsp.exec_cmd("flatpak run com.spotify.Client"), { description = "Launch Spotify" })
--hl.bind("SUPER + B", hl.dsp.workspace.toggle_special("BlueBubbles"))
hl.bind("SUPER + B", function()
	local window = hl.get_window("class:bluebubbles")
	if window ~= nil then
		--close bluebubbles window
		hl.dispatch(hl.dsp.window.close({ window = window }))
	else
		--launch blue bubbles
		hl.dispatch(hl.dsp.exec_cmd("gio launch ~/.config/autostart/BlueBubbles.desktop"))
	end
end, { description = "Launch or Show Blue Bubbles window" })
