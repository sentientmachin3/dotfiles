-- Common remaps
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set('n', '<leader>p', '<cmd>Ex<CR>')

-- Telescope remaps
local builtins = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtins.find_files, {})
vim.keymap.set('n', '<leader>sg', builtins.live_grep, {})
vim.keymap.set('n', '<leader>lk', builtins.keymaps, {})

-- Barbar line remaps
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<A-j>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-k>', '<Cmd>BufferNext<CR>', opts)

map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)

map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)

-- LSP mix remaps
vim.keymap.set('n', '<leader>fp', '<Cmd>Prettier<CR>')

-- LSPsaga remaps
vim.keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>") -- Symbol definition
vim.keymap.set({"n","v"}, "<leader>ca", "<cmd>Lspsaga code_action<CR>")  -- Code action
vim.keymap.set("n", "<leader>gr", "<cmd>Lspsaga rename<CR>") -- Rename
