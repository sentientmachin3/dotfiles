return {
	"rose-pine/neovim",
	as = "rose-pine",
	version = false,
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd("colorscheme rose-pine")
	end,
}
