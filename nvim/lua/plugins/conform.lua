return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				javascript = { { "prettierd" } },
				typescript = { { "prettierd" } },
				typescriptreact = { { "prettierd" } },
				go = { { "gofumpt" } },
			},
		})
	end,
}
