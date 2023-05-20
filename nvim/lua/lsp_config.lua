local cmp = require("cmp")
local lsp_config = require("lspconfig")
require("cmp_nvim_lsp")
local mason = require("mason")
local mason_lsp = require("mason-lspconfig")
local null_ls = require("null-ls")
local prettier = require("prettier")

local on_attach = function(_, bufnr)
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

	local bufopts = { noremap = true, silent = true, buffer = bufnr }
	vim.keymap.set("n", "gd",  "<cmd>Glance definitions<CR>", bufopts)
	vim.keymap.set("n", "gi", "<cmd>Glance implementations<CR>", bufopts)
	vim.keymap.set("n", "gr", "<cmd>Glance references<CR>", bufopts)
	vim.keymap.set("n", "gD", "<cmd>Glance declaration<CR>", bufopts)

	-- vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
	-- vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
	-- vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
	-- vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)

	vim.keymap.set({ "n", "i" }, "<C-h>", vim.lsp.buf.signature_help, bufopts)
	vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, bufopts)
	vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, bufopts)
	vim.keymap.set("n", "<leader>wl", function()
		print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
	end, bufopts)
	vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, bufopts)
	vim.keymap.set("n", "<leader>f", function()
		vim.lsp.buf.format({ async = true })
	end, bufopts)
	vim.keymap.set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>") -- Symbol definition
	vim.keymap.set({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>") -- Code action
	vim.keymap.set("n", "<leader>r", "<cmd>Lspsaga rename<CR>") -- Rename
	vim.diagnostic.config({
		underline = true,
		signs = true,
		virtual_text = false,
		float = {
			show_header = true,
			source = "if_many",
			border = "rounded",
			focusable = false,
		},
		update_in_insert = false, -- default to false
		severity_sort = false, -- default to false
	})
end

-- Typescript function to fix all imports
local function organize_imports()
	local params = {
		command = "_typescript.organizeImports",
		arguments = { vim.api.nvim_buf_get_name(0) },
		title = "",
	}
	vim.lsp.buf.execute_command(params)
end

prettier.setup({
	["null-ls"] = {
		condition = function()
			return prettier.config_exists({
				check_package_json = true,
			})
		end,
		timeout = 5000,
	},
})
mason.setup()
mason_lsp.setup()
mason_lsp.setup_handlers({
	function(server_name)
		lsp_config[server_name].setup({
			on_attach = on_attach,
		})
		lsp_config["tsserver"].setup({
			on_attach = on_attach,
			commands = {
				OrganizeImports = {
					organize_imports,
					description = "Organize Imports",
				},
			},
		})
		lsp_config["lua_ls"].setup({
			on_attach = on_attach,
			settings = { Lua = { diagnostics = { globals = { "vim" } } } },
		})
	end,
})
null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.black,
		null_ls.builtins.formatting.prettier,
		null_ls.builtins.diagnostics.eslint,
		null_ls.builtins.formatting.goimports,
	},
})

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
	mapping = cmp.mapping.preset.insert({
		["<C-p>"] = cmp.mapping.select_prev_item(),
		["<C-n>"] = cmp.mapping.select_next_item(),
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "nvim_lsp_signature_help" },
	}, {
		{ name = "buffer" },
	}),
})
