vim.pack.add({ "https://github.com/nvim-telescope/telescope.nvim" })
require("telescope").setup({
	defaults = {
		mappings = {
			i = {
				["<C-w>"] = function()
					vim.cmd([[normal! bcw]])
				end,
			},
		},
	},
})
local builtins = require("telescope.builtin")
vim.keymap.set("n", "<leader>af", builtins.git_files, {})
vim.keymap.set("n", "<leader>sf", builtins.find_files, {})
vim.keymap.set("n", "<leader>g", builtins.live_grep, {})
