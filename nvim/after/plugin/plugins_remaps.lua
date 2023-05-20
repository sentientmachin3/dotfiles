vim.keymap.set("n", "<leader>i", vim.cmd.TroubleToggle)

-- Telescope remaps
local builtins = require("telescope.builtin")
vim.keymap.set("n", "<leader>sf", builtins.git_files, {})
vim.keymap.set("n", "<leader>af", builtins.find_files, {})
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
vim.keymap.set("n", "<A-j>", vim.cmd.BufferPrevious(), opts)
vim.keymap.set("n", "<A-k>", vim.cmd.BufferNext(), opts)
vim.keymap.set("n", "<A-c>", vim.cmd.BufferClose(), opts)

-- LSP mix remaps
vim.keymap.set("n", "<leader>fp", vim.cmd.Prettier())
