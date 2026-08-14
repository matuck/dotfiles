hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("md3_standard", { type = "bezier", points = { { 0.2, 0 }, { 0, 1 } } })
hl.curve("md3_decel", { type = "bezier", points = { { 0.05, 0.7 }, { 0.1, 1 } } })
hl.curve("md3_accel", { type = "bezier", points = { { 0.3, 0 }, { 0.8, 0.15 } } })
hl.curve("overshot", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.1 } } })
hl.curve("crazyshot", { type = "bezier", points = { { 0.1, 1.5 }, { 0.76, 0.92 } } })
hl.curve("hyprnostretch", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.0 } } })
hl.curve("menu_decel", { type = "bezier", points = { { 0.1, 1 }, { 0, 1 } } })
hl.curve("menu_accel", { type = "bezier", points = { { 0.38, 0.04 }, { 1, 0.07 } } })
hl.curve("easeInOutCirc", { type = "bezier", points = { { 0.85, 0 }, { 0.15, 1 } } })
hl.curve("easeOutCirc", { type = "bezier", points = { { 0, 0.55 }, { 0.45, 1 } } })
hl.curve("easeOutExpo", { type = "bezier", points = { { 0.16, 1 }, { 0.3, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1}    } })
hl.curve("softAcDecel", { type = "bezier", points = { { 0.26, 0.26 }, { 0.15, 1 } } })
hl.curve("md2", { type = "bezier", points = { { 0.4, 0 }, { 0.2, 1 } } })
hl.animation({
    leaf = "windows",
    enabled = true,
    speed = 3,
    bezier = "md3_decel",
    style = "popin 60%",
})
hl.animation({
    leaf = "windowsIn",
    enabled = true,
    speed = 5,
    bezier = "md3_decel",
    style = "popin 60%",
})
hl.animation({
    leaf = "windowsOut",
    enabled = true,
    speed = 5,
    bezier = "md3_accel",
    style = "popin 60%",
})
hl.animation({
    leaf = "border",
    enabled = true,
    speed = 10,
    bezier = "default",
})
hl.animation({
    leaf = "fade",
    enabled = true,
    speed = 3,
    bezier = "md3_decel",
})
hl.animation({
    leaf = "layersIn",
    enabled = true,
    speed = 3,
    bezier = "menu_decel",
    style = "slide",
})
hl.animation({
    leaf = "layersOut",
    enabled = true,
    speed = 1.6,
    bezier = "menu_accel",
})
hl.animation({
    leaf = "fadeLayersIn",
    enabled = true,
    speed = 2,
    bezier = "menu_decel",
})
hl.animation({
    leaf = "fadeLayersOut",
    enabled = true,
    speed = 4.5,
    bezier = "menu_accel",
})
hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 10,
    bezier = "menu_decel",
    style = "slide"
})
hl.animation({
    leaf = "specialWorkspace",
    enabled = true,
    speed = 3,
    bezier = "md3_decel",
    style = "slidevert",
})

hl.config({
    input = {
        kb_layout = "us",
        numlock_by_default = true,
        repeat_delay = 250,
        repeat_rate = 35,
        touchpad = {
            natural_scroll = true,
            disable_while_typing = true,
            clickfinger_behavior = true,
            scroll_factor = 0.5,
        },
        special_fallthrough = true,
        follow_mouse = 1,
    },
    binds = {
        scroll_event_delay = 0,
    },
    gestures = {
        --    workspace_swipe = true
        workspace_swipe_distance = 700,
        workspace_swipe_cancel_ratio = 0.2,
        workspace_swipe_min_speed_to_force = 5,
        workspace_swipe_direction_lock = true,
        workspace_swipe_direction_lock_threshold = 10,
        workspace_swipe_create_new = true,
    },
    general = {
        -- Gaps and border
        gaps_in = 3,
        gaps_out = 3,
        gaps_workspaces = 50,
        border_size = 3,
        -- Fallback colors
        col = {
            active_border = "rgba(00FFFFFC)",
            inactive_border = "rgba(31313600)",
        },
        resize_on_border = true,
        no_focus_fallback = true,
        layout = "dwindle",
        allow_tearing = true,
    },
    dwindle = {
        preserve_split = true,
        smart_split = false,
        smart_resizing = false,
    },
    decoration = {
        rounding = 20,
        blur = {
            enabled = false,
            xray = true,
            special = false,
            new_optimizations = true,
            size = 14,
            passes = 4,
            brightness = 1,
            noise = 0.01,
            contrast = 1,
            popups = true,
            popups_ignorealpha = 0.6,
        },
        -- Shadow
	shadow = {
	    enabled = true,
            range = 4,
            offset = {0, 2},
            render_power = 2,
            color  = "rgba(0000ff2A)",
	},
        -- Shader
        -- Dim
        dim_inactive = false,
        dim_strength = 0.1,
        dim_special = 0,
    },
    animations = {
        enabled = true,
    },
    misc = {
        vrr = 1,
        animate_manual_resizes = false,
        animate_mouse_windowdragging = false,
        enable_swallow = false,
        swallow_regex = "(foot|kitty|allacritty|Alacritty)",
        disable_hyprland_logo = true,
        force_default_wallpaper = 0,
        --    new_window_takes_over_fullscreen = 2
        allow_session_lock_restore = true,
        initial_workspace_tracking = false,
    },
    -- Overview
})

