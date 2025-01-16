return {
    "rose-pine/neovim",
    as = "rose-pine",
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
        require('rose-pine').setup({
            styles = {
                bold = false,
                italic = false,
                transparency = false,
            },

        })
        vim.cmd("colorscheme rose-pine")
    end,
}
