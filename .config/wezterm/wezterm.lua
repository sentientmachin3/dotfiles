local wezterm = require("wezterm")

local config = {
	color_scheme = "rose-pine",
	enable_tab_bar = false,
	default_prog = { "tmux" },
	font = wezterm.font({
		-- family = "JetbrainsMono Nerd Font Mono",
		-- family = "SFMono Nerd Font Mono",
		family = "Berkeley Mono Medium",
		weight = "Medium",
		harfbuzz_features = {
			"calt=0",
			"clig=0",
			"liga=0",
			"zero", -- Changes 0 to slashed variant.
			"cv01", -- l with symmetrical lower stroke. (ss01)
			"cv12", -- u with traditional construction (ss01)
			"cv20", -- 5 old variant
		},
	}),
	font_size = 14
}

return config
