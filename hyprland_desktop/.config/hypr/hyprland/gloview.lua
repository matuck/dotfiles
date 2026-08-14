hl.config({
    plugin = {
        gloview = {
            layout = "grid",
	    -- gap = 100,
	    -- key_all_workspaces = "a",
	    show_all_workspaces = 0,
	    show_special = 1,
	    backdrop_color = 0x00070a10,
	    --strip_band_color = 0x00070a10,
	}
    }
})
hl.bind("SUPER + O", hl.plugin.gloview.allworkspaces)
