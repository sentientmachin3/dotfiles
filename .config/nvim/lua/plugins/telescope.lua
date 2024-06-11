return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.4",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtins = require("telescope.builtin")
		vim.keymap.set("n", "<leader>sf", builtins.git_files, {})
		vim.keymap.set("n", "<leader>af", builtins.find_files, {})
		vim.keymap.set("n", "<leader>sg", builtins.live_grep, {})
		vim.keymap.set("n", "<leader>lk", builtins.keymaps, {})
		vim.keymap.set("n", "<C-b>", builtins.buffers, {})
	end,
}
