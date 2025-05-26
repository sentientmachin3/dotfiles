return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup({
			signs = {
				add = { text = "│" },
				change = { text = "│" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
				untracked = { text = "┆" },
			},
			on_attach = function()
				local gitsigns = require("gitsigns")
				vim.keymap.set("n", "]c", function()
					gitsigns.nav_hunk("next")
				end)
				vim.keymap.set("n", "[c", function()
					gitsigns.nav_hunk("prev")
				end)
			end,
		})
	end,
}
