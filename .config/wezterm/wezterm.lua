local wezterm = require("wezterm")

local config = {
	color_scheme = "rose-pine",
	enable_tab_bar = true,
	use_fancy_tab_bar = false,
	show_new_tab_button_in_tab_bar = false,
	tab_bar_at_bottom = true,
	window_padding = {
		bottom = 0,
	},
	font = wezterm.font({
		family = "Berkeley Mono",
		weight = "DemiBold",
	}),
	font_size = 13,
	colors = {
		tab_bar = {
			background = "#191724",
			active_tab = {
				fg_color = "#191724",
				bg_color = "#9ccfd8",
				intensity = "Bold",
				italic = false,
			},
			inactive_tab = {
				bg_color = "#191724",
				fg_color = "#9ccfd8",
				intensity = "Bold",
			},
		},
	},
}

return config
