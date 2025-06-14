local wezterm = require("wezterm")

local config = {
	color_scheme = "rose-pine",
	enable_tab_bar = false,
	default_prog = { "tmux" },
	font = wezterm.font({
		family = "Berkeley Mono",
		weight = "Medium",
	}),
	font_size = 15
}

return config
