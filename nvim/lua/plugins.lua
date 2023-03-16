return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-tree/nvim-web-devicons")
	use("nvim-treesitter/nvim-treesitter")
	use("romgrk/barbar.nvim")
	use("nvim-lualine/lualine.nvim")
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")
	use("lewis6991/gitsigns.nvim")
	use("numToStr/Comment.nvim")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("ellisonleao/gruvbox.nvim")
	use("matbme/JABS.nvim")
    use("jose-elias-alvarez/typescript.nvim")
	use({
		"nvim-telescope/telescope.nvim",
		requires = {
			{ "nvim-lua/plenary.nvim" },
		},
	})

	-- Lsp stuff (loaded in lsp_config)
	use("neovim/nvim-lspconfig")
	use("jose-elias-alvarez/null-ls.nvim")
	use("onsails/lspkind.nvim")
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
	require("gruvbox").setup({
		undercurl = true,
		underline = true,
		bold = false,
		italic = false,
		strikethrough = true,
		invert_selection = false,
		invert_signs = false,
		invert_tabline = false,
		invert_intend_guides = false,
		inverse = true, -- invert background for search, diffs, statuslines and errors
		contrast = "", -- can be "hard", "soft" or empty string
		palette_overrides = {},
		overrides = {},
		dim_inactive = false,
		transparent_mode = false,
	})
	vim.cmd("colorscheme gruvbox")
	require("jabs").setup({
		position = "center",
		border = "rounded",
		use_devicons = false,
	})
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
			theme = "gruvbox",
		},
	})

	require("bufferline").setup({
		animation = false,
		auto_hide = true,
		tabpages = true,
		closable = false,
		clickable = true,
		diagnostics = {
			[vim.diagnostic.severity.ERROR] = { enabled = true, icon = "ﬀ" },
			[vim.diagnostic.severity.WARN] = { enabled = false },
			[vim.diagnostic.severity.INFO] = { enabled = false },
			[vim.diagnostic.severity.HINT] = { enabled = true },
		},
		highlight_visible = true,
		icons = "both",
		semantic_letters = false,
		letters = "asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP",
	})

	require("gitsigns").setup()
	require("telescope").setup()
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
