return {
	"folke/trouble.nvim",
	config = function()
		require("trouble").setup({
			focus = true,
			auto_preview = false,
			auto_refresh = false,
			auto_jump = false,
			follow = true,
		})
		vim.keymap.set("n", "<leader>e", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>")
	end,
	cmd = "Trouble",
}
