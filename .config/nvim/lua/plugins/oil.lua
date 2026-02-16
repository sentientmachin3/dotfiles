return {
	"stevearc/oil.nvim",
	config = function()
		local oil = require("oil")
		oil.setup({
			view_options = {
				show_hidden = true,
				is_hidden_file = function()
					return false
				end,
			},
			columns = {
				directory = {
					color = "#FFFFFF",
					name = "OilDir",
				},
			},
		})
		vim.keymap.set("n", "<leader>-", function()
			if vim.bo.filetype == "oil" then
				oil.close()
			else
				oil.open()
			end
		end)
	end,
}
