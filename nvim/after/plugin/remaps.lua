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
vim.keymap.set("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)

-- Oil
vim.keymap.set("n", "<leader>-", function()
	if vim.bo.filetype == "oil" then
		require("oil").close()
	else
		require("oil").open()
	end
end)

--Trouble
vim.keymap.set("n", "<leader>e", "<cmd>TroubleToggle document_diagnostics<cr>")

-- Typescript organize/sort imports
vim.keymap.set("n", "<leader>s", "<cmd>TSToolsOrganizeImports<cr>")

-- Symbols outline
vim.keymap.set("n", "<leader>o", "<cmd>SymbolsOutline<cr>")

-- Gitsigns
vim.keymap.set("n", "[c", "<cmd>Gitsigns prev_hunk<cr>")
vim.keymap.set("n", "]c", "<cmd>Gitsigns prev_hunk<cr>")
