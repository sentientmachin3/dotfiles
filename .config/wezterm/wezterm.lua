local wezterm = require("wezterm")

local BG_COLOR = "#232A2E"
local FG_COLOR = "#C3DB93"

local config = {
	enable_tab_bar = true,
	use_fancy_tab_bar = false,
    hide_tab_bar_if_only_one_tab = true,
	show_new_tab_button_in_tab_bar = false,
	tab_bar_at_bottom = true,
	window_padding = {
		bottom = 0,
	},
	font = wezterm.font({
		family = "Berkeley Mono",
		weight = "Medium",
		-- weight = "DemiBold",
	}),
	font_size = 13,
	colors = {
		background = BG_COLOR,
		foreground = FG_COLOR,
		tab_bar = {
			background = BG_COLOR,
			active_tab = {
				fg_color = BG_COLOR,
				bg_color = FG_COLOR,
				intensity = "Bold",
				italic = false,
			},
			inactive_tab = {
				bg_color = BG_COLOR,
				fg_color = FG_COLOR,
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
			key = "phys:s",
			action = wezterm.action({ ActivateTabRelative = -1 }),
		},
	},
}

return config
