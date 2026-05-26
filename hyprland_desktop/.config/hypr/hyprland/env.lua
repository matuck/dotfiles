-- ######### Input method ########## 
-- See https://fcitx-im.org/wiki/Using_Fcitx_5_on_Wayland

hl.env("QT_IM_MODULE", "ibus")
hl.env("XMODIFIERS", "@im=ibus")
-- env = GTK_IM_MODULE, wayland   # Crashes electron apps in xwayland
-- env = GTK_IM_MODULE, fcitx     # My Gtk apps no longer require this to work with fcitx5 hmm  
hl.env("SDL_IM_MODULE", "ibus")
hl.env("GLFW_IM_MODULE", "ibus")
hl.env("INPUT_METHOD", "ibus")
hl.env("GTK_THEME", "Adwaita:dark")

-- ############ Themes #############
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")
-- env = QT_STYLE_OVERRIDE,kvantum
--env = WLR_NO_HARDWARE_CURSORS, 1

-- ######## Screen tearing #########
-- env = WLR_DRM_NO_ATOMIC, 1

-- ############ Others #############
