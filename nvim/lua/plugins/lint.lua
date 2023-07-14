return {
    "mfussenegger/nvim-lint",
    config = function()
        require("lint").linters_by_ft = {
            typescript = { "eslint_d" },
            typescriptreact = { "eslint_d" },
            lua = { "luacheck" }
        }
    end
}
