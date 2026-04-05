-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Statusline config
vim.api.nvim_set_hl(0, "StatusLineFilename", { fg = "#D3C6AA", bold = false })
vim.api.nvim_set_hl(0, "StatusLineRight", { fg = "#D3C6AA" })
vim.opt.statusline = "%#StatusLineFilename#%{expand('%:.')}%=%#StatusLineRight#%{expand('%:e')} %l/%L:%c"
