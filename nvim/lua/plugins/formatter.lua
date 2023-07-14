return {
    "mhartington/formatter.nvim",
    config = function()
        local filetypes = require("formatter.filetypes")
        require("formatter").setup({
            filetype = {
                lua = {
                    filetypes.lua.stylua
                },
                typescript = {
                    filetypes.typescript.prettierd
                }
            }
        })
    end
}
