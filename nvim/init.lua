local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local function setup_gruvbox()
	vim.g.gruvbox_material_foreground = "original"
	vim.g.gruvbox_material_background = "medium"
	vim.g.gruvbox_material_enable_italic = 0
	vim.g.gruvbox_material_disable_italic_comment = 1
end

setup_gruvbox()
require("remaps")
require("ui")
if not vim.g.vscode then
	require("opts")
	require("lazy").setup({ spec = "plugins", change_detection = { notify = false } })
end
