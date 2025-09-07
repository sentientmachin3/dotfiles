return {
	"rose-pine/neovim",
	name = "rose-pine",
	priority = 1000,
	config = function()
		require("rose-pine").setup({
			styles = {
				bold = false,
				italic = false,
				transparency = false,
			},
			palette = {
				main = {
					pine = "#6FADC7",
				},
			},
		})
		vim.cmd("colorscheme rose-pine")
	end,
	lazy = false,
}
