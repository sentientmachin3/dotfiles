return {
	"folke/trouble.nvim",
	config = function()
		require("trouble").setup({
			focus = true,
			auto_preview = false,
			auto_refresh = false,
			auto_jump = false,
			follow = true,
			open_no_results = false,
		})
		vim.keymap.set("n", "<leader>e", "<cmd>Trouble diagnostics toggle<cr>")
	end,
	cmd = "Trouble",
}
