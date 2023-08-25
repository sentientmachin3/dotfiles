return {
	"mhartington/formatter.nvim",
	config = function()
		local filetypes = require("formatter.filetypes")
		local prettier = filetypes.typescript.prettierd

		require("formatter").setup({
			filetype = {
				lua = { filetypes.lua.stylua },
				typescript = { prettier },
				css = { prettier },
				html = { prettier },
				typescriptreact = { prettier },
				["*"] = { vim.lsp.buf.format },
			},
		})
	end,
}
