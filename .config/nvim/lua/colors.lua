-- grey.lua — a minimal greyscale colorscheme for Neovim
-- Place in ~/.config/nvim/colors/grey.lua
-- Usage: :colorscheme grey

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end
vim.g.colors_name = "grey"
vim.o.background = "dark"

-- ─── Palette ─────────────────────────────────────────────────────────────────
local c = {
	-- backgrounds
	bg0 = "#252525", -- absolute bg (editor background)
	bg1 = "#2e2e2e", -- slightly lighter bg (cursorline, float bg)
	bg2 = "#383838", -- sidebars, inactive areas
	bg3 = "#434343", -- visual selection, pmenu bg
	bg4 = "#515151", -- borders, column guides

	-- foregrounds
	fg0 = "#d4d4d4", -- primary text
	fg1 = "#b0b0b0", -- secondary text, parameters
	fg2 = "#868686", -- comments, inactive
	fg3 = "#606060", -- very muted / line numbers

	-- accents (still greyscale, just value variations)
	bright = "#e8e8e8", -- titles, bold labels
	mid = "#a8a8a8", -- keywords, statements
	dim = "#747474", -- operators, punctuation
	faint = "#404040", -- non-text, EOB markers

	-- diagnostic tones (subtle desaturated)
	err = "#cc6666", -- errors
	warn = "#999966", -- warnings
	info = "#8899aa", -- info
	hint = "#6a8a7a", -- hints

	-- diff
	add = "#3a4a3a",
	change = "#3a3a4a",
	delete = "#4a3a3a",
	add_fg = "#88aa88",
	change_fg = "#8888aa",
	delete_fg = "#aa8888",

	none = "NONE",
}

-- ─── Helper ───────────────────────────────────────────────────────────────────
---@param name string
---@param opts table
local function hi(name, opts)
	vim.api.nvim_set_hl(0, name, opts)
end

-- ─── Editor ──────────────────────────────────────────────────────────────────
hi("Normal", { fg = c.fg0, bg = c.bg0 })
hi("NormalNC", { fg = c.fg1, bg = c.bg0 })
hi("NormalFloat", { fg = c.fg0, bg = c.bg1 })
hi("FloatBorder", { fg = c.bg4, bg = c.bg1 })
hi("FloatTitle", { fg = c.bright, bg = c.bg1, bold = true })
hi("FloatFooter", { fg = c.fg3, bg = c.bg1 })

hi("Cursor", { fg = c.bg0, bg = c.fg0 })
hi("CursorIM", { fg = c.bg0, bg = c.fg0 })
hi("CursorLine", { bg = c.bg1 })
hi("CursorColumn", { bg = c.bg1 })
hi("CursorLineNr", { fg = c.mid, bold = true })

hi("LineNr", { fg = c.fg3 })
hi("SignColumn", { fg = c.fg3, bg = c.bg0 })
hi("ColorColumn", { bg = c.bg2 })
hi("FoldColumn", { fg = c.fg3, bg = c.bg0 })
hi("Folded", { fg = c.fg2, bg = c.bg2 })

hi("VertSplit", { fg = c.bg4, bg = c.bg0 })
hi("WinSeparator", { fg = c.bg4, bg = c.bg0 })

hi("StatusLine", { fg = c.fg1, bg = c.bg2 })
hi("StatusLineNC", { fg = c.fg3, bg = c.bg2 })

hi("TabLine", { fg = c.fg2, bg = c.bg2 })
hi("TabLineFill", { bg = c.bg2 })
hi("TabLineSel", { fg = c.fg0, bg = c.bg0, bold = true })

hi("WildMenu", { fg = c.bg0, bg = c.mid })
hi("Pmenu", { fg = c.fg0, bg = c.bg3 })
hi("PmenuSel", { fg = c.bright, bg = c.bg4, bold = true })
hi("PmenuSbar", { bg = c.bg3 })
hi("PmenuThumb", { bg = c.dim })
hi("PmenuKind", { fg = c.fg2, bg = c.bg3 })
hi("PmenuKindSel", { fg = c.mid, bg = c.bg4 })
hi("PmenuExtra", { fg = c.fg3, bg = c.bg3 })
hi("PmenuExtraSel", { fg = c.fg2, bg = c.bg4 })

hi("Visual", { bg = c.bg3 })
hi("VisualNOS", { bg = c.bg3 })
hi("Search", { fg = c.bright, bg = c.bg4, bold = true })
hi("IncSearch", { fg = c.bg0, bg = c.mid, bold = true })
hi("CurSearch", { fg = c.bg0, bg = c.mid, bold = true })
hi("Substitute", { fg = c.bg0, bg = c.dim })

hi("MatchParen", { fg = c.bright, underline = true, bold = true })
hi("QuickFixLine", { fg = c.fg0, bg = c.bg3 })

hi("NonText", { fg = c.faint })
hi("EndOfBuffer", { fg = c.faint })
hi("Whitespace", { fg = c.faint })
hi("SpecialKey", { fg = c.dim })
hi("Conceal", { fg = c.fg3, bg = c.none })

hi("Directory", { fg = c.mid, bold = true })
hi("Title", { fg = c.bright, bold = true })
hi("Question", { fg = c.mid })
hi("MoreMsg", { fg = c.mid })
hi("ModeMsg", { fg = c.fg0, bold = true })
hi("MsgArea", { fg = c.fg1 })
hi("MsgSeparator", { fg = c.bg4, bg = c.bg2 })
hi("ErrorMsg", { fg = c.err, bold = true })
hi("WarningMsg", { fg = c.warn })

hi("SpellBad", { undercurl = true, sp = c.err })
hi("SpellCap", { undercurl = true, sp = c.warn })
hi("SpellRare", { undercurl = true, sp = c.info })
hi("SpellLocal", { undercurl = true, sp = c.hint })

-- ─── Syntax ──────────────────────────────────────────────────────────────────
hi("Comment", { fg = c.fg2, italic = true })
hi("Constant", { fg = c.fg0 })
hi("String", { fg = c.fg1 })
hi("Character", { fg = c.fg1 })
hi("Number", { fg = c.mid })
hi("Boolean", { fg = c.mid, bold = true })
hi("Float", { fg = c.mid })

hi("Identifier", { fg = c.fg0 })
hi("Function", { fg = c.bright, bold = true })

hi("Statement", { fg = c.mid, bold = true })
hi("Conditional", { fg = c.mid, bold = true })
hi("Repeat", { fg = c.mid, bold = true })
hi("Label", { fg = c.mid })
hi("Operator", { fg = c.dim })
hi("Keyword", { fg = c.mid, bold = true })
hi("Exception", { fg = c.mid, bold = true })

hi("PreProc", { fg = c.fg2 })
hi("Include", { fg = c.fg2 })
hi("Define", { fg = c.fg2 })
hi("Macro", { fg = c.fg2 })
hi("PreCondit", { fg = c.fg2 })

hi("Type", { fg = c.fg0 })
hi("StorageClass", { fg = c.mid })
hi("Structure", { fg = c.mid })
hi("Typedef", { fg = c.mid })

hi("Special", { fg = c.dim })
hi("SpecialChar", { fg = c.dim })
hi("Tag", { fg = c.fg1 })
hi("Delimiter", { fg = c.dim })
hi("SpecialComment", { fg = c.fg2, italic = true })
hi("Debug", { fg = c.warn })

hi("Underlined", { underline = true })
hi("Ignore", { fg = c.faint })
hi("Error", { fg = c.err, bold = true })
hi("Todo", { fg = c.warn, bold = true })

-- ─── Treesitter ───────────────────────────────────────────────────────────────
hi("@variable", { fg = c.fg0 })
hi("@variable.builtin", { fg = c.mid, italic = true })
hi("@variable.parameter", { fg = c.fg1 })
hi("@variable.member", { fg = c.fg0 })

hi("@constant", { fg = c.fg0 })
hi("@constant.builtin", { fg = c.mid, bold = true })
hi("@constant.macro", { fg = c.fg2 })

hi("@string", { fg = c.fg1 })
hi("@string.escape", { fg = c.dim })
hi("@string.special", { fg = c.dim })
hi("@string.regexp", { fg = c.fg2 })

hi("@number", { fg = c.mid })
hi("@number.float", { fg = c.mid })
hi("@boolean", { fg = c.mid, bold = true })

hi("@function", { fg = c.bright, bold = true })
hi("@function.builtin", { fg = c.mid, bold = true })
hi("@function.call", { fg = c.fg0 })
hi("@function.macro", { fg = c.fg2 })
hi("@function.method", { fg = c.bright, bold = true })
hi("@function.method.call", { fg = c.fg0 })

hi("@constructor", { fg = c.fg0 })
hi("@operator", { fg = c.dim })

hi("@keyword", { fg = c.mid, bold = true })
hi("@keyword.import", { fg = c.fg2 })
hi("@keyword.operator", { fg = c.mid })
hi("@keyword.return", { fg = c.mid, bold = true })
hi("@keyword.exception", { fg = c.mid, bold = true })
hi("@keyword.conditional", { fg = c.mid, bold = true })
hi("@keyword.repeat", { fg = c.mid, bold = true })
hi("@keyword.type", { fg = c.mid })

hi("@type", { fg = c.fg0 })
hi("@type.builtin", { fg = c.mid })
hi("@type.qualifier", { fg = c.mid })
hi("@type.definition", { fg = c.fg0 })

hi("@attribute", { fg = c.fg2 })
hi("@property", { fg = c.fg0 })
hi("@tag", { fg = c.mid, bold = true })
hi("@tag.attribute", { fg = c.fg1 })
hi("@tag.delimiter", { fg = c.dim })

hi("@punctuation.delimiter", { fg = c.dim })
hi("@punctuation.bracket", { fg = c.dim })
hi("@punctuation.special", { fg = c.dim })

hi("@comment", { fg = c.fg2, italic = true })
hi("@comment.todo", { fg = c.warn, bold = true })
hi("@comment.note", { fg = c.info, bold = true })
hi("@comment.error", { fg = c.err, bold = true })
hi("@comment.warning", { fg = c.warn, bold = true })

hi("@markup.heading", { fg = c.bright, bold = true })
hi("@markup.bold", { bold = true })
hi("@markup.italic", { italic = true })
hi("@markup.strikethrough", { strikethrough = true })
hi("@markup.underline", { underline = true })
hi("@markup.link", { fg = c.mid })
hi("@markup.link.url", { fg = c.fg2 })
hi("@markup.raw", { fg = c.fg1 })

-- ─── LSP Semantic Tokens ──────────────────────────────────────────────────────
hi("@lsp.type.class", { fg = c.fg0 })
hi("@lsp.type.comment", { fg = c.fg2, italic = true })
hi("@lsp.type.decorator", { fg = c.fg2 })
hi("@lsp.type.enum", { fg = c.fg0 })
hi("@lsp.type.enumMember", { fg = c.fg0 })
hi("@lsp.type.event", { fg = c.fg0 })
hi("@lsp.type.function", { fg = c.bright })
hi("@lsp.type.interface", { fg = c.fg0 })
hi("@lsp.type.keyword", { fg = c.mid })
hi("@lsp.type.macro", { fg = c.fg2 })
hi("@lsp.type.method", { fg = c.bright })
hi("@lsp.type.modifier", { fg = c.mid })
hi("@lsp.type.namespace", { fg = c.fg2 })
hi("@lsp.type.number", { fg = c.mid })
hi("@lsp.type.operator", { fg = c.dim })
hi("@lsp.type.parameter", { fg = c.fg1 })
hi("@lsp.type.property", { fg = c.fg0 })
hi("@lsp.type.regexp", { fg = c.fg2 })
hi("@lsp.type.string", { fg = c.fg1 })
hi("@lsp.type.struct", { fg = c.fg0 })
hi("@lsp.type.type", { fg = c.fg0 })
hi("@lsp.type.typeParameter", { fg = c.fg1, italic = true })
hi("@lsp.type.variable", { fg = c.fg0 })

hi("@lsp.mod.deprecated", { strikethrough = true })
hi("@lsp.mod.readonly", { italic = true })
hi("@lsp.mod.static", { italic = true })

-- ─── LSP Diagnostics ─────────────────────────────────────────────────────────
hi("DiagnosticError", { fg = c.err })
hi("DiagnosticWarn", { fg = c.warn })
hi("DiagnosticInfo", { fg = c.info })
hi("DiagnosticHint", { fg = c.hint })
hi("DiagnosticOk", { fg = c.hint })

hi("DiagnosticVirtualTextError", { fg = c.err, bg = c.bg1, italic = true })
hi("DiagnosticVirtualTextWarn", { fg = c.warn, bg = c.bg1, italic = true })
hi("DiagnosticVirtualTextInfo", { fg = c.info, bg = c.bg1, italic = true })
hi("DiagnosticVirtualTextHint", { fg = c.hint, bg = c.bg1, italic = true })
hi("DiagnosticVirtualTextOk", { fg = c.hint, bg = c.bg1, italic = true })

hi("DiagnosticUnderlineError", { undercurl = true, sp = c.err })
hi("DiagnosticUnderlineWarn", { undercurl = true, sp = c.warn })
hi("DiagnosticUnderlineInfo", { undercurl = true, sp = c.info })
hi("DiagnosticUnderlineHint", { undercurl = true, sp = c.hint })
hi("DiagnosticUnderlineOk", { undercurl = true, sp = c.hint })

hi("DiagnosticFloatingError", { fg = c.err })
hi("DiagnosticFloatingWarn", { fg = c.warn })
hi("DiagnosticFloatingInfo", { fg = c.info })
hi("DiagnosticFloatingHint", { fg = c.hint })

hi("DiagnosticSignError", { fg = c.err })
hi("DiagnosticSignWarn", { fg = c.warn })
hi("DiagnosticSignInfo", { fg = c.info })
hi("DiagnosticSignHint", { fg = c.hint })

-- ─── LSP Reference / Misc ────────────────────────────────────────────────────
hi("LspReferenceText", { sp = c.dim })
hi("LspReferenceRead", { sp = c.dim })
hi("LspReferenceWrite", { sp = c.mid })
hi("LspSignatureActiveParameter", { fg = c.bright, underline = true })
hi("LspInlayHint", { fg = c.fg3, bg = c.bg1, italic = true })
hi("LspCodeLens", { fg = c.fg3, italic = true })
hi("LspCodeLensSeparator", { fg = c.faint })

-- ─── Diff ─────────────────────────────────────────────────────────────────────
hi("DiffAdd", { fg = c.add_fg, bg = c.add })
hi("DiffChange", { fg = c.change_fg, bg = c.change })
hi("DiffDelete", { fg = c.delete_fg, bg = c.delete })
hi("DiffText", { fg = c.change_fg, bg = c.change, bold = true })

hi("Added", { fg = c.add_fg })
hi("Changed", { fg = c.change_fg })
hi("Removed", { fg = c.delete_fg })

-- ─── Git Signs (gitsigns.nvim) ────────────────────────────────────────────────
hi("GitSignsAdd", { fg = c.add_fg })
hi("GitSignsChange", { fg = c.change_fg })
hi("GitSignsDelete", { fg = c.delete_fg })
hi("GitSignsAddNr", { fg = c.add_fg })
hi("GitSignsChangeNr", { fg = c.change_fg })
hi("GitSignsDeleteNr", { fg = c.delete_fg })
hi("GitSignsAddLn", { bg = c.add })
hi("GitSignsChangeLn", { bg = c.change })
hi("GitSignsDeleteLn", { bg = c.delete })
hi("GitSignsCurrentLineBlame", { fg = c.fg3, italic = true })

-- ─── Statusline helpers (works with both lualine and manual statuslines) ──────
-- Mode colours — all kept greyscale via value contrast only
hi("SLNormal", { fg = c.bg0, bg = c.fg0, bold = true }) -- Normal
hi("SLInsert", { fg = c.bg0, bg = c.mid, bold = true }) -- Insert
hi("SLVisual", { fg = c.bg0, bg = c.dim, bold = true }) -- Visual
hi("SLReplace", { fg = c.bg0, bg = c.warn, bold = true }) -- Replace
hi("SLCommand", { fg = c.bg0, bg = c.fg2, bold = true }) -- Command
hi("SLInactive", { fg = c.fg3, bg = c.bg2 }) -- Inactive
hi("SLFile", { fg = c.fg0, bg = c.bg2 }) -- Filename
hi("SLBranch", { fg = c.fg2, bg = c.bg2 }) -- Git branch
hi("SLSep", { fg = c.bg4, bg = c.bg2 }) -- Separator
hi("SLDiagE", { fg = c.err, bg = c.bg2 }) -- Diag error
hi("SLDiagW", { fg = c.warn, bg = c.bg2 }) -- Diag warning
hi("SLDiagI", { fg = c.info, bg = c.bg2 }) -- Diag info
hi("SLPos", { fg = c.fg1, bg = c.bg2 }) -- Position
hi("SLPercent", { fg = c.fg2, bg = c.bg2 }) -- File percent

-- ─── Telescope ────────────────────────────────────────────────────────────────
hi("TelescopeNormal", { fg = c.fg0, bg = c.bg1 })
hi("TelescopeBorder", { fg = c.bg4, bg = c.bg1 })
hi("TelescopeTitle", { fg = c.bright, bg = c.bg1, bold = true })
hi("TelescopePromptNormal", { fg = c.fg0, bg = c.bg2 })
hi("TelescopePromptBorder", { fg = c.bg4, bg = c.bg2 })
hi("TelescopePromptTitle", { fg = c.bright, bg = c.bg2, bold = true })
hi("TelescopePromptPrefix", { fg = c.mid, bg = c.bg2 })
hi("TelescopePromptCounter", { fg = c.fg3, bg = c.bg2 })
hi("TelescopePreviewNormal", { fg = c.fg1, bg = c.bg0 })
hi("TelescopePreviewBorder", { fg = c.bg4, bg = c.bg0 })
hi("TelescopePreviewTitle", { fg = c.bright, bg = c.bg0, bold = true })
hi("TelescopeResultsNormal", { fg = c.fg0, bg = c.bg1 })
hi("TelescopeResultsBorder", { fg = c.bg4, bg = c.bg1 })
hi("TelescopeResultsTitle", { fg = c.bright, bg = c.bg1, bold = true })
hi("TelescopeSelection", { fg = c.bright, bg = c.bg3, bold = true })
hi("TelescopeSelectionCaret", { fg = c.mid, bg = c.bg3 })
hi("TelescopeMatching", { fg = c.bright, underline = true, bold = true })

-- ─── nvim-cmp ─────────────────────────────────────────────────────────────────
hi("CmpNormal", { fg = c.fg0, bg = c.bg1 })
hi("CmpBorder", { fg = c.bg4, bg = c.bg1 })
hi("CmpDocNormal", { fg = c.fg1, bg = c.bg1 })
hi("CmpDocBorder", { fg = c.bg4, bg = c.bg1 })
hi("CmpItemAbbrMatch", { fg = c.bright, bold = true })
hi("CmpItemAbbrMatchFuzzy", { fg = c.mid, bold = true })
hi("CmpItemAbbr", { fg = c.fg0 })
hi("CmpItemAbbrDeprecated", { fg = c.fg3, strikethrough = true })
hi("CmpItemMenu", { fg = c.fg3, italic = true })
hi("CmpItemKind", { fg = c.dim })
hi("CmpGhostText", { fg = c.fg3, italic = true })

-- ─── Notify / Noice ──────────────────────────────────────────────────────────
hi("NotifyERRORBorder", { fg = c.err })
hi("NotifyWARNBorder", { fg = c.warn })
hi("NotifyINFOBorder", { fg = c.info })
hi("NotifyDEBUGBorder", { fg = c.dim })
hi("NotifyTRACEBorder", { fg = c.dim })
hi("NotifyERRORTitle", { fg = c.err, bold = true })
hi("NotifyWARNTitle", { fg = c.warn, bold = true })
hi("NotifyINFOTitle", { fg = c.info, bold = true })
hi("NotifyDEBUGTitle", { fg = c.dim, bold = true })
hi("NotifyTRACETitle", { fg = c.dim, bold = true })
hi("NotifyERRORBody", { fg = c.fg0, bg = c.bg1 })
hi("NotifyWARNBody", { fg = c.fg0, bg = c.bg1 })
hi("NotifyINFOBody", { fg = c.fg0, bg = c.bg1 })
hi("NotifyDEBUGBody", { fg = c.fg1, bg = c.bg1 })
hi("NotifyTRACEBody", { fg = c.fg1, bg = c.bg1 })
hi("NotifyERRORIcon", { fg = c.err })
hi("NotifyWARNIcon", { fg = c.warn })
hi("NotifyINFOIcon", { fg = c.info })
hi("NotifyDEBUGIcon", { fg = c.dim })
hi("NotifyTRACEIcon", { fg = c.dim })

-- ─── WhichKey ─────────────────────────────────────────────────────────────────
hi("WhichKey", { fg = c.mid })
hi("WhichKeyGroup", { fg = c.bright, bold = true })
hi("WhichKeyDesc", { fg = c.fg1 })
hi("WhichKeySeparator", { fg = c.fg3 })
hi("WhichKeyFloat", { bg = c.bg1 })
hi("WhichKeyBorder", { fg = c.bg4, bg = c.bg1 })
hi("WhichKeyValue", { fg = c.fg2 })

-- ─── Indent guides (indent-blankline.nvim) ───────────────────────────────────
hi("IblIndent", { fg = c.bg3 })
hi("IblScope", { fg = c.bg4 })
hi("IblWhitespace", { fg = c.bg3 })
