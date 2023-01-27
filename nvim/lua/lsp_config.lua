local coq = require('coq')
local on_attach = function(_, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)

    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '<leader>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end


local lsp_config = require('lspconfig')
lsp_config['pyright'].setup {
    on_attach = on_attach,
    coq.lsp_ensure_capabilities()
}
lsp_config['rust_analyzer'].setup {
    on_attach = on_attach,
    coq.lsp_ensure_capabilities()
}
lsp_config['sumneko_lua'].setup {
    on_attach = on_attach,
    settings = {
        Lua = {
            diagnostics = { globals = { 'vim' } }
        }
    }
}
lsp_config['eslint'].setup {}

-- null-ls related stuff for improved typescript dev
local null_ls = require('null-ls')
null_ls.setup({
    sources = {
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.completion.spell,
        require("typescript.extensions.null-ls.code-actions"),
    }
})

require('typescript').setup({
    disable_commands = false,
    debug = false,
    go_to_source_definition = {
        fallback = true,
    },
    server = {
        on_attach = on_attach,
    },
    coq.lsp_ensure_capabilities()
})

require('prettier').setup({
    cli_options = {
        config_precedence = 'prefer-file',
    },
})
