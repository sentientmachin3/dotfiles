-- return {
-- 	"sainnhe/gruvbox-material",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		vim.cmd("colorscheme gruvbox-material")
-- 	end
-- }
return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = "frappe",
            integrations = {
                gitsigns = true,
                cmp = true,
                mason = true,
                barbar = true,
            }
        })
        vim.cmd("colorscheme catppuccin")
    end,
}
