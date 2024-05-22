local wezterm = require("wezterm")
local config = {}

-- config.font = wezterm.font("Iosevka SS04 Medium Extended")
local gruvbox = wezterm.color.get_builtin_schemes()["Gruvbox dark, medium (base16)"]
gruvbox.foreground = "#ebdbb2"
config.color_schemes = { ["custom"] = gruvbox }
config.font = wezterm.font("Berkeley Mono")
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }
config.font_size = 14.0
config.enable_tab_bar = false
config.color_scheme = "custom"
config.window_padding = { top = 0, bottom = 0 }
config.default_prog = { "tmux" }

return config
