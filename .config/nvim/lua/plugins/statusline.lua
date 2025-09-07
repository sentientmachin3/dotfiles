return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "monokai-pro",
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				refresh = {
					statusline = 100,
				},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "filename", "diagnostics" },
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = { "branch", "filetype" },
			},
		})
	end,
}
