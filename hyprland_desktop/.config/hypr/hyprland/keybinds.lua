hl.bind(
	"SUPER + H",
	hl.dsp.exec_cmd(
		'hyprctl -j binds | jq  \'map(select(.description != "")) | map(.mod = {"0": "", "2": "Caps", "4": "Ctrl", "5": "Ctrl+Shift", "8": "Alt", "12": "Ctrl+Alt", "16": "Mod2", "32": "Mod3", "64": "Super", "65": "Super+Shift", "68":"Super+Ctrl", "69": "Super+Ctrl+Shift", "72": "Super+Alt", "73": "Super+Shift+Alt", "76": "Super+Ctrl+Alt", "128": "Mod5"}[.modmask|tostring])|map(.bind = .mod +" "+ .key)| .[] | (.bind +" - " + .description)\' -r | rofi -dmenu -i -m'
	),
	{ description = "Help Menu" }
)

--#! Actions
-- Screenshot, Record, OCR, Color picker, Clipboard history
hl.bind(
	"SUPER + V",
	hl.dsp.exec_cmd(
		"if [[ $(pidof rofi) ]]; then killall rofi; fi; rofi -modi clipboard:~/.config/rofi/cliphist-rofi-img -show clipboard -show-icons"
	),
	{ description = "Show clipboard history" }
)
hl.bind(
	"SUPER + Period",
	hl.dsp.exec_cmd("if [[ $(pidof rofi) ]]; then killall rofi; fi; rofi -show emoji -emoji-mode copy"),
	{ description = "Emoji selector" }
)
hl.bind("SUPER+SHIFT + S", hl.dsp.exec_cmd("~/.local/bin/rofi_screenshot.sh"), { description = "Screenshot menu" })
-- Color picker
hl.bind(
	"SUPER+SHIFT + C",
	hl.dsp.exec_cmd("hyprpicker -a"),
	{ description = "Get color from screen and put on clipboard" }
)
--#! Session
hl.bind("SUPER + L", hl.dsp.exec_cmd("loginctl lock-session"), { description = "Lock Screen" })
hl.bind("SUPER+SHIFT + L", hl.dsp.exec_cmd("wlogout -s"), { description = "Pull up session menu" })

--!
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

--!
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
hl.bind(
	"SUPER+ALT + left",
	hl.dsp.workspace.move({ monitor = "l" }),
	{ description = "Move workspace to monitor to left" }
)
hl.bind(
	"SUPER+ALT + right",
	hl.dsp.workspace.move({ monitor = "r" }),
	{ description = "Move workspace to monitor to right" }
)
hl.bind("SUPER+ALT + up", hl.dsp.workspace.move({ monitor = "u" }), { description = "Move workspace to monitor to up" })
hl.bind(
	"SUPER+ALT + down",
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
--# Special
hl.bind("SUPER + S", hl.dsp.workspace.toggle_special(), { description = "Toggle special workspace" })

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
hl.bind(
	"SUPER+CTRL+SHIFT + Up",
	hl.dsp.window.move({ workspace = "special" }),
	{ description = "Move window to special workspace" }
)
hl.bind(
	"SUPER+ALT + S",
	hl.dsp.window.move({ workspace = "special", silent = true }),
	{ description = "Move window to special workspace" }
)

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
--/# bind = SUPER+SHIFT, Page_↑/↓,, # Window: move to workspace left/right
hl.bind(
	"SUPER+ALT + Right",
	hl.dsp.window.move({ workspace = "+1" }),
	{ description = "Move window to next workspace" }
)
hl.bind(
	"SUPER+ALT + Left",
	hl.dsp.window.move({ workspace = -1 }),
	{ description = "Move Window to previous workspace" }
)
hl.bind("SUPER + P", hl.dsp.window.pin(), { description = "Pin window" })

hl.bind("SUPER+CTRL + S", hl.dsp.workspace.toggle_special(), { description = "Toggle special workspace" })
hl.bind("ALT + Tab", hl.dsp.window.cycle_next(""), { description = "Go to next window" })
hl.bind("ALT + Tab", hl.dsp.window.bring_to_top())

--!
--#! Widgets
hl.bind("SUPER+CTRL + R", hl.dsp.exec_cmd("killall ashell ; ashell &"), { description = "Reload ashell" })
hl.bind(
	"SUPER+CTRL+ALT + R",
	hl.dsp.exec_cmd("hyprctl reload; killall ashell; ashell &"),
	{ description = "Reload Hyrpland and ashell" }
)

--#! Media
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

hl.bind("XF86AudioMute", hl.dsp.exec_cmd("ashell msg volume-toggle-mute"), { description = "Mute", locked = true })
hl.bind("SUPER+SHIFT + M", hl.dsp.exec_cmd("ashell msg volume-toggle-mute"), { description = "Mute" })
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("ashell msg volume-up"),
	{ description = "Volume up", locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("ashell msg volume-down"),
	{ description = "Volume down", locked = true, repeating = true }
)

--#! Brightness
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("ashell msg brightness-down"), { description = "Decrease brightness" })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("ashell msg brightness-up"), { description = "Increase brightness" })
--!
--#! Apps
hl.bind("SUPER + K", hl.dsp.exec_cmd("gnome-network-displays"), { description = "Gnome Network Displays" })
hl.bind("SUPER + T", hl.dsp.exec_cmd("kitty"), { description = "Kitty/Terminal" })
hl.bind(
	"SUPER+ALT + T",
	hl.dsp.exec_cmd("gio launch $(grep -i teams ~/.local/share/applications/*|awk -F ':' '{print $1}')"),
	{ description = "Microsoft Teams" }
)
hl.bind("SUPER+CTRL+ALT + T", hl.dsp.exec_cmd("flatpak run com.todoist.Todoist"), { description = "Todoist" })
hl.bind(
	"SUPER+ALT + O",
	hl.dsp.exec_cmd("gio launch $(grep -i outlook ~/.local/share/applications/*|awk -F ':' '{print $1}')"),
	{ description = "Microsoft Outlook" }
)
hl.bind("SUPER + Z", hl.dsp.exec_cmd("zeditor"), { description = "Zed" })
hl.bind("SUPER + C", hl.dsp.exec_cmd("code"), { description = "VSCode" })
hl.bind("SUPER + E", hl.dsp.exec_cmd("nemo"), { description = "Nemo File Explorer" })
hl.bind("SUPER+ALT + E", hl.dsp.exec_cmd("thunar"), { description = "Thunar File Explorer" })
hl.bind("SUPER+CTRL + W", hl.dsp.exec_cmd("firefox"), { description = "Firefox" })
hl.bind("SUPER + W", hl.dsp.exec_cmd("brave"), { description = "Brave" })
hl.bind("SUPER + X", hl.dsp.exec_cmd("NotepadNext"), { description = "NotepadNext" })
hl.bind("SUPER+SHIFT + W", hl.dsp.exec_cmd("libreoffice"), { description = "Libre Office" })
hl.bind(
	"SUPER + I",
	hl.dsp.exec_cmd('XDG_CURRENT_DESKTOP="gnome" gnome-control-center'),
	{ description = "Gnome settings" }
)
hl.bind("SUPER+CTRL + V", hl.dsp.exec_cmd("pavucontrol"), { description = "Volume mixer" })
hl.bind("SUPER+CTRL+SHIFT + V", hl.dsp.exec_cmd("easyeffects"), { description = "Easy Effects" })
hl.bind("CTRL+SHIFT + Escape", hl.dsp.exec_cmd("resources"), { description = "System Resource Monitor" })
hl.bind("SUPER+CTRL + M", hl.dsp.exec_cmd("flatpak run com.spotify.Client"), { description = "Spotify" })
hl.bind(
	"SUPER + SUPER_L",
	hl.dsp.exec_cmd(
		"if [[ $(pidof rofi) ]]; then killall rofi; else rofi -show drun -show-icons -theme launchpad.rasi; fi"
	),
	{ description = "Application Launcher" }
)
hl.bind("SUPER+CTRL + T", hl.dsp.exec_cmd("waypaper"), { description = "Change wallpaper" })
hl.bind("SUPER + D", hl.dsp.exec_cmd("monique"), { description = "Change Monitor/Display Settings" })
-- These do not work because it is for sway nc and im now using ashells builtin
hl.bind("SUPER + N", hl.dsp.exec_cmd("swaync-client -t"))
hl.bind("SUPER + C", hl.dsp.exec_cmd("swaync-client -C"))

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
