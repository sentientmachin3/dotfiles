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
vim.keymap.set("n", "<A-j>", "<Cmd>BufferPrevious<CR>", opts)
vim.keymap.set("n", "<A-k>", "<Cmd>BufferNext<CR>", opts)
vim.keymap.set("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
vim.keymap.set("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
vim.keymap.set("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
vim.keymap.set("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
vim.keymap.set("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
vim.keymap.set("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
vim.keymap.set("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
vim.keymap.set("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
vim.keymap.set("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
vim.keymap.set("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)
vim.keymap.set("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)

-- LSP mix remaps
vim.keymap.set("n", "<leader>fp", "<Cmd>Prettier<CR>")
