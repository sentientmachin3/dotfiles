return {
	"j-morano/buffer_manager.nvim",
	config = function()
		require("buffer_manager").setup({})
		local opts = { noremap = true, silent = true }
		local bmui = require("buffer_manager.ui")
		vim.keymap.set("n", "<A-s>", function()
			bmui.toggle_quick_menu()
		end, opts)
		vim.keymap.set("n", "<A-h>", function()
			bmui.nav_prev()
		end, opts)
		vim.keymap.set("n", "<A-l>", function()
			bmui.nav_next()
		end, opts)
		vim.keymap.set("n", "<A-c>", "<cmd>bd<cr>", opts)
	end,
}
