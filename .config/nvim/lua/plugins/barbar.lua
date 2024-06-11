return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("barbar").setup({
			animation = false,
			auto_hide = true,
		})
		local opts = { noremap = true, silent = true }
		vim.keymap.set("n", "<A-h>", "<Cmd>BufferPrevious<CR>", opts)
		vim.keymap.set("n", "<A-l>", "<Cmd>BufferNext<CR>", opts)
		vim.keymap.set("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)
	end,
}
