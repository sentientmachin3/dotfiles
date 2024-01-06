-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})

-- LSP rounded corners
local rounded_border = { border = "rounded" }
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, rounded_border)
vim.lsp.handlers["textDocument/diagnostic"] = vim.lsp.with(vim.lsp.handlers.hover, rounded_border)
vim.lsp.handlers["textDocument/show_line_diagnostics"] = vim.lsp.with(vim.lsp.handlers.hover, rounded_border)
vim.lsp.handlers["textDocument/diagnostics"] = vim.lsp.with(vim.lsp.handlers.hover, rounded_border)
