return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-treesitter/nvim-treesitter")
	use("romgrk/barbar.nvim")
	use("nvim-lualine/lualine.nvim")
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")
	use("lewis6991/gitsigns.nvim")
	use("numToStr/Comment.nvim")
    use("dnlhc/glance.nvim")
	use({
		"folke/trouble.nvim",
		requires = "nvim-tree/nvim-web-devicons",
	})
	use("sainnhe/gruvbox-material")
	use({
		"nvim-telescope/telescope.nvim",
		requires = {
			{ "nvim-lua/plenary.nvim" },
		},
	})
	use({
		"nvim-tree/nvim-tree.lua",
		requires = "nvim-tree/nvim-web-devicons",
	})
    use("ThePrimeagen/git-worktree.nvim")

	-- Lsp stuff (loaded in lsp_config)
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")
	use("jose-elias-alvarez/null-ls.nvim")
	use("onsails/lspkind.nvim")
	use("MunifTanjim/prettier.nvim")
	use({
		"hrsh7th/nvim-cmp",
		requires = { "hrsh7th/cmp-nvim-lsp", "L3MON4D3/LuaSnip", "saadparwaiz1/cmp_luasnip" },
	})
	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
		requires = { { "nvim-tree/nvim-web-devicons" } },
	})

	-- Plugins config
	vim.cmd("colorscheme gruvbox-material")
	require("nvim-tree").setup({
		view = {
			width = vim.go.columns,
		},
		actions = {
			open_file = {
				quit_on_open = true,
			},
		},
		filters = {
			dotfiles = false,
		},
	})
    require("glance").setup()
	require("nvim-treesitter.configs").setup({
		ensure_installed = { "python", "typescript", "json", "rust", "lua", "go" },
		sync_install = false,
		auto_install = true,
		highlight = { enable = true },
		autotag = { enable = true },
	})

	require("lualine").setup({
		options = {
			icons_enabled = true,
			theme = "gruvbox-material",
		},
	})

	require("bufferline").setup({
		animation = false,
		auto_hide = true,
		tabpages = true,
		clickable = true,
		highlight_visible = true,
		icons = {
			diagnostics = {
				[vim.diagnostic.severity.ERROR] = { enabled = true, icon = "ﬀ" },
				[vim.diagnostic.severity.WARN] = { enabled = false },
				[vim.diagnostic.severity.INFO] = { enabled = false },
				[vim.diagnostic.severity.HINT] = { enabled = true },
			},
			buffer_index = true,
			filetype = { enabled = true },
		},
		semantic_letters = false,
	})

	require("gitsigns").setup()
	require("telescope").setup()
    require("telescope").load_extension("git_worktree")
	require("Comment").setup()
	require("nvim-web-devicons").setup()
	require("lspkind").init({
		mode = "symbol_text",
		preset = "codicons",
	})
	require("nvim-autopairs").setup()
	require("lspsaga").setup({
		lightbulb = { enable = false },
	})
end)
