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
	keys = {
		{
			mods = "CTRL",
			key = "phys:f",
			action = wezterm.action_callback(function(win, _)
				local _, pane, _ = win:mux_window():spawn_tab({})
				pane:send_text("lw\n")
			end),
		},
		{
			mods = "CTRL",
			key = "phys:t",
			action = wezterm.action_callback(function(win, _)
				win:mux_window():spawn_tab({ cwd = os.getenv("HOME") })
			end),
		},
		{
			mods = "CTRL",
			key = ";",
			action = wezterm.action({ ActivateTabRelative = 1 }),
		},
		{
			mods = "CTRL",
			key = "phys:h",
			action = wezterm.action({ ActivateTabRelative = -1 }),
		},
	},
}

return config
