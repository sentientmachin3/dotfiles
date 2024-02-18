return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	priority = 999,
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
			sync_install = false,
			highlight = { enable = true },
			autotag = { enable = true },
			auto_install = true,
		})
	end,
}
