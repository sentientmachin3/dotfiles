return {
	"stevearc/aerial.nvim",
	config = function()
		require("aerial").setup({
			close_on_select = true,
			autojump = true,
			layout = {
				width = 0.15,
			},
		})
		vim.keymap.set("n", "<leader>o", "<cmd>AerialToggle<CR>")
	end,
}
