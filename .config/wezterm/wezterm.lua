local wezterm = require("wezterm")
local config = {}

config.font = wezterm.font("Berkeley Mono")
config.font_size = 14.0
config.enable_tab_bar = false
config.color_scheme = "Gruvbox dark, medium (base16)"
config.window_padding = { top = 0, bottom = 0 }
config.default_prog = { "tmux" }

return config