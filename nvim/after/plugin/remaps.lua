-- Lsp
vim.keymap.set("n", "<leader>d", ":lua vim.diagnostic.open_float()<CR>")

local builtins = require("telescope.builtin")
vim.keymap.set("n", "<leader>sf", builtins.git_files, {})
vim.keymap.set("n", "<leader>af", builtins.find_files, {})
vim.keymap.set("n", "<leader>sg", builtins.live_grep, {})
vim.keymap.set("n", "<leader>lk", builtins.keymaps, {})

-- Barbar
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<A-h>", "<Cmd>BufferPrevious<CR>", opts)
vim.keymap.set("n", "<A-l>", "<Cmd>BufferNext<CR>", opts)
vim.keymap.set("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
vim.keymap.set("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
vim.keymap.set("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
vim.keymap.set("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
vim.keymap.set("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
vim.keymap.set("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
vim.keymap.set("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
vim.keymap.set("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
vim.keymap.set("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
vim.keymap.set("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)

-- Oil
vim.keymap.set("n", "<leader>e", function()
	if vim.bo.filetype == "oil" then
		require("oil").close()
	else
		require("oil").open()
	end
end)

--Trouble
vim.keymap.set("n", "<leader>i", "<cmd>TroubleToggle document_diagnostics<cr>")

-- Typescript organize/sort imports
vim.keymap.set("n", "<leader>o", "<cmd>TSToolsOrganizeImports<cr>")
