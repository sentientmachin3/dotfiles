local function is_lid_closed()
	local handle = io.popen("cat /proc/acpi/button/lid/*/state 2>/dev/null")
	if handle then
		local result = handle:read("*a")
		handle:close()
		return result:find("closed") ~= nil
	end
	return false
end

hl.monitor({
	output = "",
	mode = "2560x1440@60",
	position = "auto",
	scale = "1",
})

-- hl.monitor({
-- 	output = "DP-3",
-- 	mode = "1920x1080@60",
-- 	position = "auto",
-- 	scale = "1",
-- })

hl.monitor({
	output = "eDP-1",
	mode = "1920x1080@60",
	position = "auto",
	scale = "1",
	disabled = is_lid_closed(),
})

hl.bind("switch:on:Lid Switch", function()
	hl.monitor({ output = "eDP-1", disabled = true })
end, { locked = true })

hl.bind("switch:off:Lid Switch", function()
	hl.monitor({ output = "eDP-1", disabled = false })
end, { locked = true })
