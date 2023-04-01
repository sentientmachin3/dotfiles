require("configs")
require("remaps")
if vim.g.vscode then
else
    require("opt")
    require("lsp_config")
    require("plugins")
end
