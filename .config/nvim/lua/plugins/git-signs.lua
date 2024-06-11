return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup()
		vim.keymap.set("n", "<C-y>", "<cmd>Gitsigns setqflist<cr>")
	end,
}
