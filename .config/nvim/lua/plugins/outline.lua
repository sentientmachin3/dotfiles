return {
	"stevearc/aerial.nvim",
	config = function()
		require("aerial").setup({
            layout = {
                width = 0.15
            }
        })
		vim.keymap.set("n", "<leader>o", "<cmd>AerialToggle<CR>")
	end,
}
