hl.bind("SUPER+CTRL + R", hl.dsp.exec_cmd("killall noctalia ; noctalia &"), { description = "Reload noctalia" })
hl.bind(
	"SUPER+CTRL+ALT + R",
	hl.dsp.exec_cmd("hyprctl reload; killall noctalia; noctalia &"),
	{ description = "Reload Hyrpland and noctalia" }
)

hl.bind(
	"SUPER + H",
	hl.dsp.exec_cmd("noctalia msg panel-toggle blackbartblues/keymap:panel"),
	{ description = "Help Menu" }
)

hl.bind(
	"SUPER + SUPER_L",
	hl.dsp.exec_cmd("noctalia msg panel-toggle launcher"),
	{ release = true, description = "Application Launcher" }
)

hl.bind(
	"SUPER+CTRL + T", 
	hl.dsp.exec_cmd("noctalia msg panel-toggle wallpaper"),
        --hl.dsp.exec_cmd("noctalia msg panel-toggle wallpaper"),
	{ description = "Change wallpaper" })
hl.bind("SUPER + D", hl.dsp.exec_cmd("monique"), { description = "Change Monitor/Display Settings" })

hl.bind(
	"SUPER + V",
	hl.dsp.exec_cmd("noctalia msg panel-toggle clipboard"),
	{ description = "Show clipboard history" }
)

hl.bind(
	"SUPER + ALT + B",
	hl.dsp.exec_cmd("noctalia msg panel-toggle launcher /bk"),
	{ description = "Command Bookmarks" }
)
hl.bind(
	"SUPER + Period",
	hl.dsp.exec_cmd("noctalia msg panel-toggle launcher /emo"),
	{ description = "Emoji selector" }
)
hl.bind("SUPER+SHIFT + S", hl.dsp.exec_cmd("noctalia msg panel-toggle alexander/screen-toolkit:panel"), { description = "Screenshot menu" })

--#! Session
hl.bind("SUPER + L", hl.dsp.exec_cmd("loginctl lock-session"), { description = "Lock Screen" })
hl.bind("SUPER+SHIFT + L", hl.dsp.exec_cmd("noctalia msg panel-toggle session"), { description = "Pull up session menu" })
hl.bind("SUPER + N", hl.dsp.exec_cmd("noctalia msg panel-toggle control-center notifications"), { description = "Toggle Notifications Panel"})
hl.bind("SUPER + ALT + N", hl.dsp.exec_cmd("noctalia msg notification-clear-history"), { description = "Clear Notifications"})


-------------------------------------------------------------
---  OSD Configs
-------------------------------------------------------------
---#! Media
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("noctalia msg volume-mute"), { description = "Mute", locked = true })
hl.bind("SUPER+SHIFT + M", hl.dsp.exec_cmd("noctalia msg volume-mute"), { description = "Mute" })
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("noctalia msg volume-up"),
	{ description = "Volume up", locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("noctalia msg volume-down"),
	{ description = "Volume down", locked = true, repeating = true }
)

hl.bind(
	"SUPER + ALT + M",
	hl.dsp.exec_cmd("noctalia msg panel-toggle control-center media"),
	{ description = "Show the media panel" }
)

--#! Brightness
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("noctalia msg brightness-down"), { description = "Decrease brightness" })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("noctalia msg brightness-up"), { description = "Increase brightness" })
