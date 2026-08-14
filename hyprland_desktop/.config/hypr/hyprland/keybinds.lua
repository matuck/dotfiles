require("hyprland/keybinds/workspaces-windows")
require("hyprland/keybinds/specialworkspaces")
require("hyprland/keybinds/media")
require("hyprland/keybinds/apps")
require("hyprland/keybinds/environment")


-- Testing
hl.bind(
	"SUPER+ALT + f12",
	hl.dsp.exec_cmd(
		'notify-send \'Test notification\' "Here\'s a really long message to test truncation and wrapping\\nYou can middle click or flick this notification to dismiss it!" -a \'Shell\' -A "Test1=I got it!" -A "Test2=Another action" -t 5000'
	)
)
hl.bind(
	"SUPER+ALT + Equal",
	hl.dsp.exec_cmd('notify-send "Urgent notification" "Ah hell no" -u critical -a \'Hyprland keybind\'')
)
