vim.pack.add({ "https://github.com/folke/todo-comments.nvim" })
require("todo-comments").setup({
	keywords = {
		FIX = {
			icon = " ",
			color = "error",
			alt = { "FIXME", "BUG", "FIXIT", "ISSUE" },
		},
		TODO = { icon = " ", color = "info" },
		HACK = { icon = " ", color = "warning" },
		WARN = { icon = " ", color = "warning", alt = { "WARNING" } },
		PERF = { icon = " ", alt = { "SPEED", "PERF" } },
		NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
	},
})
