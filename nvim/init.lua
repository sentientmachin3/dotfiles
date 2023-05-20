require("configs")
require("remaps")
if vim.g.vscode then
else
    require("plugins")
    require("opt")
    require("lsp_config")
end
