return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "no-clown-fiesta",
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				refresh = {
					statusline = 100,
				},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diagnostics" },
				lualine_c = {},
				lualine_x = {},
				lualine_y = { "filename" },
				lualine_z = { "location" },
			},
		})
	end,
}
