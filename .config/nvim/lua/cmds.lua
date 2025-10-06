-- remove when telescope fixes the winborder bug
vim.api.nvim_create_autocmd("User", {
	pattern = "TelescopeFindPre",
	callback = function()
		vim.opt_local.winborder = "none"
		vim.api.nvim_create_autocmd("WinLeave", {
			once = true,
			callback = function()
				vim.opt_local.winborder = "rounded"
			end,
		})
	end,
})

-- LineBlame of current line
vim.api.nvim_create_user_command("BlameLine", function()
	local line = vim.fn.line(".")
	local file = vim.fn.expand("%:p")

	-- Get porcelain-style blame info (machine-readable)
	local output = vim.fn.systemlist(string.format("git blame -L %d,%d --line-porcelain %s", line, line, file))
	if vim.v.shell_error ~= 0 or #output == 0 then
		print("No blame info (file may be untracked or outside a repo).")
		return
	end

	-- Extract fields
	local commit = output[1]:match("^([0-9a-f]+)")
    print(commit)
	local author, date, summary
	for _, l in ipairs(output) do
		if l:match("^author ") then
			author = l:gsub("^author ", "")
		end
		if l:match("^author-time ") then
			local ts = tonumber(l:gsub("^author%-time ", ""))
			date = os.date("%Y-%m-%d", ts)
		end
		if l:match("^summary ") then
			summary = l:gsub("^summary ", "")
		end
	end

	if author and date and summary and commit then
		print(string.format("%s | %s | %s | %s", author, date, summary, commit))
	else
		print("Could not parse blame info.")
	end
end, { desc = "Show git blame for current line (formatted)" })
