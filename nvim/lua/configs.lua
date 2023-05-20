-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})

-- Moder Lua auto-command for launching netrwPlugin which shipped with the nvim
local mygroup = vim.api.nvim_create_augroup("loading_netrwPlugin", { clear = true })
vim.api.nvim_create_autocmd({ "VimEnter" }, {
	pattern = { "*" },
	command = ":silent! Explore",
	group = mygroup,
})
