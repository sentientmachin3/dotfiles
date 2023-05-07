local nvim_tree = require("nvim-tree.api")
vim.keymap.set("n", "<leader>i", vim.cmd.TroubleToggle)

-- Telescope remaps
local builtins = require("telescope.builtin")
vim.keymap.set("n", "<leader>sf", builtins.git_files, {})
vim.keymap.set("n", "<leader>ff", builtins.find_files, {})
vim.keymap.set("n", "<leader>sg", builtins.live_grep, {})
vim.keymap.set("n", "<leader>lk", builtins.keymaps, {})
vim.keymap.set("n", "<leader>b", function()
	builtins.buffers({
		sort_mru = true,
		ignore_current_buffer = true,
	})
end)

-- Barbar line remaps
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<A-j>", function()
	nvim_tree.tree.close()
	vim.cmd.BufferPrevious()
end, opts)
vim.keymap.set("n", "<A-k>", function()
	nvim_tree.tree.close()
	vim.cmd.BufferNext()
end, opts)
vim.keymap.set("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)

-- LSP mix remaps
vim.keymap.set("n", "<leader>fp", "<Cmd>Prettier<CR>")

-- Git worktree extension
vim.keymap.set("n", "<leader>wt", function()
	require("telescope").extensions.git_worktree.git_worktrees()
end)
