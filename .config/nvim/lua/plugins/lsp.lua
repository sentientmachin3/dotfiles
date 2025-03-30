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
    local nonels = require("null-ls")
    nonels.setup({
        notify_format = "",
        debug = true,
        sources = {
            require("none-ls.diagnostics.eslint_d"),
            require("none-ls.code_actions.eslint_d"),
        },
    })
end

local dependencies = {
    "nvim-tree/nvim-web-devicons",
    "nvim-lua/plenary.nvim",
    "williamboman/mason-lspconfig.nvim",
    -- "hrsh7th/nvim-cmp",
    -- "hrsh7th/cmp-nvim-lsp",
    "stevearc/conform.nvim",
    "nvimtools/none-ls-extras.nvim",
    "nvimtools/none-ls.nvim",
    "j-hui/fidget.nvim",
    "folke/trouble.nvim",
    "nvim-treesitter/nvim-treesitter-context",
}

return {
    "williamboman/mason.nvim",
    dependencies = dependencies,
    config = function()
        require("mason").setup()
        require("fidget").setup()
        setup_formatters()
        setup_linters()
    end,
}
