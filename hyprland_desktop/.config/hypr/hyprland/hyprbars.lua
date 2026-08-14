hl.config({
    plugin = {
        hyprbars = {
            bar_height = 20,
            on_double_click = "hyprctl dispatch 'hl.dsp.window.fullscreen()'",
	    bar_buttons_alignment = "left"
        },
    },
})
hl.plugin.hyprbars.add_button({
    bg_color = "rgb(FF605C)",
    fg_color = "rgb(ffffff)",
    size = 15,
    icon = "X",
    action = "hyprctl dispatch 'hl.dsp.window.close()'",
})

hl.plugin.hyprbars.add_button({
    bg_color = "rgb(00CA4E)",
    fg_color = "rgb(000000)",
    size = 15,
    icon = "_",
    action = 'hyprctl dispatch "hl.dsp.window.fullscreen()"',
})

hl.plugin.hyprbars.add_button({
    bg_color = "rgb(eeee11)",
    fg_color = "rgb(000000)",
    size = 15,
    icon = "~",
    action = 'hyprctl dispatch "hl.dsp.window.float()"',
})
