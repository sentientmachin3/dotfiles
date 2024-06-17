local function on_lsp_attach(_, bufnr)
	local bufopts = { noremap = true, silent = true, buffer = bufnr }
	vim.keymap.set("n", "<leader>s", "<cmd>OrganizeImports<cr>")
	vim.keymap.set("n", "<leader>d", ":lua vim.diagnostic.open_float()<CR>")
	vim.keymap.set("n", "<leader>c", "<cmd>lua vim.lsp.buf.code_action()<cr>", { buffer = true })
	vim.keymap.set("n", "<leader>f", function()
		require("conform").format({ lsp_fallback = true })
	end)
	vim.keymap.set("n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<cr>")
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
	vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
	vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, bufopts)
	vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, bufopts)
	vim.keymap.set("n", "]d", vim.diagnostic.goto_next, bufopts)
end

local function setup_cmp()
	local cmp = require("cmp")
	cmp.setup({
		snippet = {
			expand = function(args)
				require("luasnip").lsp_expand(args.body)
			end,
		},
		window = {
			documentation = cmp.config.window.bordered(),
			completion = cmp.config.window.bordered(),
		},
		mapping = {
			["<C-p>"] = cmp.mapping.select_prev_item(),
			["<C-n>"] = cmp.mapping.select_next_item(),
			["<C-b>"] = cmp.mapping.scroll_docs(-4),
			["<C-f>"] = cmp.mapping.scroll_docs(4),
			["<CR>"] = cmp.mapping.confirm({ select = false }),
			["<C-Space>"] = cmp.mapping.complete(),
		},
		sources = cmp.config.sources({
			{ name = "nvim_lsp" },
		}, {
			{ name = "buffer" },
		}),
	})
end

local function setup_formatters()
	require("conform").setup({
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			javascript = { "prettierd" },
			json = { "prettierd" },
			jsonc = { "prettierd" },
			typescript = { "prettierd" },
			html = { "prettierd" },
			css = { "prettierd" },
			scss = { "prettierd" },
			typescriptreact = { "prettierd" },
			go = { "gofumpt" },
			markdown = { "prettierd" },
		},
	})
end

local function setup_linters()
	require("lint").linters_by_ft = {
		typescript = { "eslint_d" },
		typescriptreact = { "eslint_d" },
		json = { "eslint_d" },
	}
	vim.api.nvim_create_autocmd({ "BufWritePost" }, {
		callback = function()
			require("lint").try_lint()
		end,
	})
end

local function get_capabilities()
	return vim.tbl_extend(
		"force",
		{},
		vim.lsp.protocol.make_client_capabilities(),
		require("cmp_nvim_lsp").default_capabilities()
	)
end

local function default_handler(server_name)
	require("lspconfig")[server_name].setup({
		on_attach = on_lsp_attach,
		capabilities = get_capabilities(),
	})
end

local handlers = {
	default_handler,
	["lua_ls"] = function()
		require("lspconfig").lua_ls.setup({
			on_attach = on_lsp_attach,
			capabilities = get_capabilities(),
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})
	end,
	["tsserver"] = function()
		local function organize_imports()
			local params = {
				command = "_typescript.organizeImports",
				arguments = { vim.api.nvim_buf_get_name(0) },
				title = "",
			}
			vim.lsp.buf.execute_command(params)
		end
		require("lspconfig").tsserver.setup({
			on_attach = on_lsp_attach,
			capabilities = get_capabilities(),
			commands = {
				OrganizeImports = {
					organize_imports,
					description = "Organize Imports",
				},
			},
		})
	end,
}

local dependencies = {
	"nvim-tree/nvim-web-devicons",
	"nvim-lua/plenary.nvim",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"L3MON4D3/LuaSnip",
	"stevearc/conform.nvim",
	"mfussenegger/nvim-lint",
	"j-hui/fidget.nvim",
	"folke/trouble.nvim",
	"nvim-treesitter/nvim-treesitter-context",
}
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })

return {
	"neovim/nvim-lspconfig",
	dependencies = dependencies,
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
			},
			handlers = handlers,
		})
		require("fidget").setup()
		setup_cmp()
		setup_formatters()
		setup_linters()

		-- Diagnostics
		vim.diagnostic.config({
			update_in_insert = true,
			virtual_text = true,
			float = {
				border = "rounded",
			},
		})
	end,
}
