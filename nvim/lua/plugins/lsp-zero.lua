return {
	"VonHeikemen/lsp-zero.nvim",
	branch = "v2.x",
	dependencies = {
		-- LSP Support
		{ "neovim/nvim-lspconfig" },
		{
			"williamboman/mason.nvim",
			build = function()
				pcall(vim.cmd, "MasonUpdate")
			end,
		},
		{ "williamboman/mason-lspconfig.nvim" },

		-- Autocompletion
		{ "hrsh7th/nvim-cmp" },
		{ "hrsh7th/cmp-nvim-lsp" },
		{ "L3MON4D3/LuaSnip" },
	},
	config = function()
		local lsp = require("lsp-zero").preset({})
		local function on_lsp_attach(client, bufnr)
			local opts = { buffer = bufnr }
			lsp.default_keymaps(opts)
			vim.keymap.set("n", "<leader>c", "<cmd>lua vim.lsp.buf.code_action()<cr>", { buffer = true })
			vim.keymap.set("n", "<leader>f", function()
				require("conform").format()
			end)
			vim.keymap.set("n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<cr>")
		end

		lsp.on_attach(function(client, bufnr)
			on_lsp_attach(client, bufnr)
		end)
		lsp.setup()

		-- Snippets config
		local cmp = require("cmp")
		require("lsp-zero").cmp_action()

		cmp.setup({
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			mapping = {
				["<C-p>"] = cmp.mapping.select_prev_item(),
				["<C-n>"] = cmp.mapping.select_next_item(),
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<CR>"] = cmp.mapping.confirm({ select = false }),
				["<C-Space>"] = cmp.mapping.complete(),
			},
		})

		-- Typescript
		require("typescript-tools").setup({
			on_attach = on_lsp_attach,
			settings = {
				publish_diagnostic_on = "insert_leave",
				expose_as_code_action = { "add_missing_imports" },
			},
		})
	end,
}
