hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

require("hyprconfig.inputs")
require("hyprconfig.ui")
require("hyprconfig.window_rules")
require("hyprconfig.keybinds")
require("hyprconfig.monitors")

hl.on("hyprland.start", function()
	hl.exec_cmd("waybar")
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd("gammastep -O 4500")
end)
