return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local actions = require("telescope.actions")
		require("telescope").setup({
			defaults = {
				mappings = {
					n = {
						["<C-w>"] = actions.delete_buffer,
					},
					i = {
						["<C-w>"] = actions.delete_buffer,
					},
				},
			},
		})
		local builtins = require("telescope.builtin")
		vim.keymap.set("n", "<leader>sf", builtins.git_files, {})
		vim.keymap.set("n", "<leader>af", builtins.find_files, {})
		vim.keymap.set("n", "<leader>sg", builtins.live_grep, {})
		vim.keymap.set("n", "<leader>lk", builtins.keymaps, {})
		vim.keymap.set("n", "<C-b>", builtins.buffers, {})
	end,
}
