local accents = {
	red = "#E85A4F",
	orange = "#FF8E29",
	peach = "#FFB07C",
	yellow = "#F6CE4E",
	lime = "#9ACD5A",
	green = "#5FB36A",
	cyan = "#64B8B4",
	blue = "#5B82C7",
	violet = "#A998F0",
	pink = "#E57AA4",
}

local colors = {
	accent = "#C3E793",
	white = "#d1b8b8",
	light_gray = "#A6A6A6",
	gray = "#737373",
	dark_gray = "#282828",
	dark = "#141414",
	diff_add = "#273C29",
	diff_change = "#4D4322",
	diff_delete = "#492523",
	diff_text = "#857131",
}

local function hl(name, val)
	vim.api.nvim_set_hl(0, name, val)
end

function colorscheme()
	vim.o.background = "dark"
	vim.g.colors_name = "silentium"
	vim.cmd.highlight("clear")
	if vim.fn.has("syntax_on") then
		vim.cmd.syntax("reset")
	end

	hl("CursorColumn", { bg = colors.dark_gray })
	hl("CursorLine", { bg = colors.dark_gray })
	hl("DiagnosticError", { fg = accents.red })
	hl("DiagnosticHint", { fg = accents.blue })
	hl("DiagnosticInfo", { fg = accents.cyan })
	hl("DiagnosticOk", { fg = accents.green })
	hl("DiagnosticWarn", { fg = accents.yellow })
	hl("DiffAdd", { bg = colors.diff_add })
	hl("DiffChange", { bg = colors.diff_change })
	hl("DiffDelete", { bg = colors.diff_delete })
	hl("DiffText", { bg = colors.diff_text })
	hl("Directory", { fg = colors.accent })
	hl("ErrorMsg", { fg = accents.red })
	hl("Folded", { bg = colors.dark_gray, fg = colors.gray })
	hl("LineNr", { fg = colors.light_gray })
	hl("LineNrBelow", { fg = colors.gray })
	hl("ModeMsg", { fg = accents.green })
	hl("MoreMsg", { fg = accents.blue })
	hl("NonText", { fg = colors.dark_gray })
	hl("Normal", { bg = colors.dark, fg = colors.white })
	hl("NormalFloat", { bg = colors.dark_gray, fg = colors.white })
	hl("OkMsg", { fg = accents.green })
	hl("Pmenu", { bg = colors.dark_gray })
	hl("PmenuMatch", { fg = colors.accent })
	hl("PmenuMatchSel", { fg = colors.dark })
	hl("PmenuSel", { bg = colors.accent, fg = colors.dark })
	hl("PmenuThumb", { bg = colors.gray })
	hl("SignColumn", { fg = colors.light_gray })
	hl("SpellBad", { undercurl = true, sp = accents.red })
	hl("SpellCap", { undercurl = true, sp = accents.yellow })
	hl("SpellLocal", { undercurl = true, sp = accents.green })
	hl("SpellRare", { undercurl = true, sp = accents.blue })
	hl("StatusLine", { bg = colors.accent, fg = colors.dark })
	hl("StatusLineNC", { bg = colors.accent, fg = colors.dark })
	hl("Visual", { bg = colors.dark_gray })
	hl("WarningMsg", { fg = accents.yellow })
	hl("WinBar", { bg = colors.accent, fg = colors.dark })
	hl("WinBarNC", { bg = colors.accent, fg = colors.dark })
	hl("WinSeparator", { fg = colors.gray })
	-- Syntax
	hl("Added", { fg = accents.green })
	hl("Changed", { fg = accents.yellow })
	hl("Comment", { fg = colors.gray })
	hl("Constant", { fg = colors.white })
	hl("Delimiter", { fg = colors.white })
	hl("Error", { bg = accents.red })
	hl("Function", { fg = colors.white })
	hl("Identifier", { fg = colors.white })
	hl("Keyword", { fg = colors.accent })
	hl("Operator", { fg = colors.white })
	hl("PreProc", { fg = colors.white })
	hl("Removed", { fg = accents.red })
	hl("Special", { fg = colors.white })
	hl("Statement", { fg = colors.accent })
	hl("String", { fg = colors.light_gray })
	hl("Todo", { fg = colors.white })
	hl("Type", { fg = colors.white })
	-- Tree-sitter
	hl("@constant.html", { fg = colors.light_gray })
	hl("@string.escape", { fg = colors.white })
	hl("@tag", { fg = colors.accent })
	hl("@tag.builtin", { fg = colors.accent })
	hl("@tag.attribute", { fg = colors.white })
	hl("@tag.delimiter", { fg = colors.white })
end

function setup(colors)
	if colors ~= nil then
		M.colors = vim.tbl_extend("force", M.colors, colors)
	end
end

setup()
colorscheme()
