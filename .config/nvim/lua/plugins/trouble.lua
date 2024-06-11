return {
	"folke/trouble.nvim",
	config = function()
		require("trouble").setup({
			focus = true,
			auto_preview = false,
			auto_refresh = false,
			auto_jump = false,
		})
	end,
	cmd = "Trouble",
	keys = {
		"<leader>e",
		"<cmd>Trouble diagnostics toggle<cr>",
		desc = "Diagnostics (Trouble)",
	},
}
