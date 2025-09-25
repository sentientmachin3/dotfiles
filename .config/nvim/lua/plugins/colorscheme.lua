return {
	"everviolet/nvim",
	name = "evergarden",
	priority = 1000,
	config = function()
		require("evergarden").setup({
			theme = {
				variant = "fall",
				accent = "green",
			},
			style = {
				tabline = { "reverse" },
				search = { "reverse" },
				incsearch = { "reverse" },
				types = {},
				keyword = {},
				comment = {},
			},
		})
		vim.cmd("colorscheme evergarden")
	end,
}
