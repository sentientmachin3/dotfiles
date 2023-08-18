return {
    "mhartington/formatter.nvim",
    config = function()
        local filetypes = require("formatter.filetypes")
        require("formatter").setup({
            filetype = {
                lua = {
                    filetypes.lua.stylua,
                },
                typescript = {
                    filetypes.typescript.prettierd,
                },
                css = {
                    filetypes.typescript.prettierd,
                },
                typescriptreact = {
                    filetypes.typescript.prettierd,
                },
                ["*"] = {
                    vim.lsp.buf.format,
                },
            },
        })
    end,
}
