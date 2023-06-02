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
        local function on_lsp_attach(bufnr)
			lsp.default_keymaps({ buffer = bufnr })
			local opts = { buffer = bufnr }
			vim.keymap.set({ "n" }, "<leader>f", function()
				vim.lsp.buf.format({ async = true })
			end, opts)
        end

		lsp.on_attach(function(_, bufnr)
            on_lsp_attach(bufnr)
		end)
		lsp.skip_server_setup({ "tsserver" })
		lsp.setup()

		-- Snippets config
		local cmp = require("cmp")
		local cmp_action = require("lsp-zero").cmp_action()

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
				["<CR>"] = cmp.mapping.confirm({ select = false }),
				["<C-Space>"] = cmp.mapping.complete(),
				["C-n>"] = cmp_action.luasnip_jump_forward(),
				["<C-p>"] = cmp_action.luasnip_jump_backward(),
			},
		})

		-- Null ls
		local null_ls = require("null-ls")
		local null_opts = lsp.build_options("null-ls", {})
		null_ls.setup({
			on_attach = null_opts.on_attach,
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.diagnostics.eslint_d,
			},
		})

		-- Typescript
		require("typescript").setup({
			debug = false,
			server = lsp.build_options("tsserver", {
                on_attach= on_lsp_attach
            }),
		})
	end,
}
