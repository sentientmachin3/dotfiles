vim.pack.add({
	"https://github.com/nvim-treesitter/nvim-treesitter",
	"https://github.com/nvim-treesitter/nvim-treesitter-context",
})
require("nvim-treesitter").setup({
	ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
	sync_install = false,
	highlight = { enable = true },
	autotag = { enable = true },
	auto_install = true,
})
require("treesitter-context").setup({
	enable = true,
	max_lines = 1,
})
