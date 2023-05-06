-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("configs")
require("remaps")
if vim.g.vscode then
else
    require("plugins")
    require("opt")
    require("lsp_config")
end
