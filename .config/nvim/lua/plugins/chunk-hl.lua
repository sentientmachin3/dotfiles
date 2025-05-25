return {
	"shellRaining/hlchunk.nvim", -- indent-blankline.nvim alternative
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("hlchunk").setup({
			chunk = {
				enable = true,
				chars = { right_arrow = "─" },
				style = "#9CCFD8",
				duration = 50,
				delay = 10,
			},
			indent = { enable = false },
			line_num = { enable = true },
			exclude_filetypes = { "help", "git", "markdown", "snippets", "text", "gitconfig", "alpha", "dashboard" },
		})
	end,
}
