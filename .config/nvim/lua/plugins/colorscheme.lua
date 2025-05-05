return {
	"aktersnurra/no-clown-fiesta.nvim",
	priority = 1000,
	config = function()
		require("no-clown-fiesta").setup({
			styles = {
				type = { bold = false, italic = false },
			},
		})
	end,
	lazy = false,
}
