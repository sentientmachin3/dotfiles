local builtins = require("telescope.builtin")
vim.keymap.set("n", "<leader>sf", builtins.git_files, {})
vim.keymap.set("n", "<leader>af", builtins.find_files, {})
vim.keymap.set("n", "<leader>sg", builtins.live_grep, {})
vim.keymap.set("n", "<leader>lk", builtins.keymaps, {})

-- Tabline
vim.keymap.set("n", "<A-l>", vim.cmd.TablineBufferNext)
vim.keymap.set("n", "<A-h>", vim.cmd.TablineBufferPrevious)
vim.keymap.set("n", "<A-c>", vim.cmd.bd)

-- NvimTree
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)

--Trouble
vim.keymap.set("n", "<leader>i", "<cmd>TroubleToggle document_diagnostics<cr>")