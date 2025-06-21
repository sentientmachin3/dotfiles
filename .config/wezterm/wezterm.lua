local wezterm = require("wezterm")

local config = {
	color_scheme = "rose-pine",
	enable_tab_bar = false,
	default_prog = { "tmux" },
	font = wezterm.font({
		family = "Berkeley Mono",
		weight = "DemiBold",
	}),
	font_size = 14
}

return config
