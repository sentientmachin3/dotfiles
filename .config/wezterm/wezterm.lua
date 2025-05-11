local wezterm = require("wezterm")

local config = {
	color_scheme = "rose-pine",
	enable_tab_bar = false,
	default_prog = { "tmux" },
	font = wezterm.font({
		family = "JetbrainsMono Nerd Font Mono",
		weight = "Medium",
		harfbuzz_features = {
			"calt=0",
			"clig=0",
			"liga=0",
			"zero", -- Changes 0 to slashed variant.
			"cv01", -- l with symmetrical lower stroke. (ss01)
			"cv04", -- j with curly descender
			"cv10", -- r with more open construction (ss01)
			"cv11", -- y with different ascender construction (ss01)
			"cv12", -- u with traditional construction (ss01)
			"cv16", -- Q with bent tail
			"cv17", -- f with curly ascender (ss02)
			"cv18", -- 269 variant
			"cv20", -- 5 old variant
		},
	}),
	font_size = 13.5,
}

return config
