vim.pack.add({ "https://github.com/neanias/everforest-nvim" })
require("everforest").setup({
	italics = false,
	disable_italic_comments = true,
})
require("everforest").load()

