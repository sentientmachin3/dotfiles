-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Statusline config
vim.api.nvim_set_hl(0, "StatusLineFilename", { fg = "#1C2225", bold = true })
vim.api.nvim_set_hl(0, "StatusLineRight", { fg = "#1C2225" })
vim.opt.statusline = "%#StatusLineFilename#%{expand('%:.')}%=%#StatusLineRight#%{expand('%:e')} %l/%L:%c"
