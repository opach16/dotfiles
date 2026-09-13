vim.pack.add({
  "https://github.com/Shatur/neovim-ayu",
})

vim.o.background = "dark"
vim.cmd.colorscheme("ayu")

local colors = {
  -- Matte Black
  bg              = "#111111",
  bg_alt          = "#333333",
  bg_selection    = "#515151",

  fg              = "#bebebe",
  fg_bright       = "#eaeaea",
  fg_white        = "#ffffff",
  fg_muted        = "#8a8a8d",

  accent          = "#e68e0d",
  accent_bright   = "#f59e0b",

  red             = "#D35F5F",
  red_dark        = "#b91c1c",

  yellow          = "#FFC107",

  black           = "#333333",
  white           = "#ffffff",
}


-- ============================================================================
-- EDITOR
-- ============================================================================

vim.api.nvim_set_hl(0, "Normal", {
  bg = colors.bg,
  fg = colors.fg,
})

vim.api.nvim_set_hl(0, "NormalNC", {
  bg = colors.bg,
  fg = colors.fg,
})

vim.api.nvim_set_hl(0, "NormalFloat", {
  bg = colors.bg,
  fg = colors.fg,
})

vim.api.nvim_set_hl(0, "FloatBorder", {
  bg = colors.bg,
  fg = colors.bg_alt,
})

vim.api.nvim_set_hl(0, "Cursor", {
  bg = colors.fg_bright,
  fg = colors.bg,
})

vim.api.nvim_set_hl(0, "CursorLine", {
  bg = "#1a1a1a",
})

vim.api.nvim_set_hl(0, "CursorColumn", {
  bg = "#1a1a1a",
})

vim.api.nvim_set_hl(0, "ColorColumn", {
  bg = "#1c1c1c",
})


-- ============================================================================
-- LINE NUMBERS
-- ============================================================================

vim.api.nvim_set_hl(0, "LineNr", {
  fg = colors.fg_muted,
})

vim.api.nvim_set_hl(0, "CursorLineNr", {
  fg = colors.accent,
  bold = true,
})

vim.api.nvim_set_hl(0, "SignColumn", {
  bg = colors.bg,
})


-- ============================================================================
-- SELECTION / SEARCH
-- ============================================================================

vim.api.nvim_set_hl(0, "Visual", {
  bg = colors.bg_selection,
  fg = colors.fg_bright,
})

vim.api.nvim_set_hl(0, "Search", {
  bg = colors.accent,
  fg = colors.bg,
})

vim.api.nvim_set_hl(0, "IncSearch", {
  bg = colors.accent_bright,
  fg = colors.bg,
})

vim.api.nvim_set_hl(0, "CurSearch", {
  bg = colors.accent_bright,
  fg = colors.bg,
})


-- ============================================================================
-- STATUS / SPLITS
-- ============================================================================

vim.api.nvim_set_hl(0, "StatusLine", {
  bg = colors.bg,
  fg = colors.fg,
})

vim.api.nvim_set_hl(0, "StatusLineNC", {
  bg = colors.bg,
  fg = colors.fg_muted,
})

vim.api.nvim_set_hl(0, "WinSeparator", {
  fg = colors.bg_alt,
  bg = colors.bg,
})

vim.api.nvim_set_hl(0, "VertSplit", {
  fg = colors.bg_alt,
  bg = colors.bg,
})


-- ============================================================================
-- POPUPS / COMPLETION
-- ============================================================================

vim.api.nvim_set_hl(0, "Pmenu", {
  bg = colors.bg_alt,
  fg = colors.fg,
})

vim.api.nvim_set_hl(0, "PmenuSel", {
  bg = colors.bg_selection,
  fg = colors.fg_bright,
  bold = true,
})

vim.api.nvim_set_hl(0, "PmenuSbar", {
  bg = colors.bg_alt,
})

vim.api.nvim_set_hl(0, "PmenuThumb", {
  bg = colors.fg_muted,
})

vim.api.nvim_set_hl(0, "Question", {
  fg = colors.accent,
})

vim.api.nvim_set_hl(0, "MoreMsg", {
  fg = colors.accent,
})


-- ============================================================================
-- FOLDING
-- ============================================================================

vim.api.nvim_set_hl(0, "Folded", {
  bg = colors.bg_alt,
  fg = colors.fg_muted,
})

vim.api.nvim_set_hl(0, "FoldColumn", {
  bg = colors.bg,
  fg = colors.fg_muted,
})


-- ============================================================================
-- COMMENTS
-- ============================================================================

vim.api.nvim_set_hl(0, "Comment", {
  fg = colors.fg_muted,
  italic = true,
})


-- ============================================================================
-- SYNTAX
-- ============================================================================

-- Variables / identifiers

vim.api.nvim_set_hl(0, "@variable", {
  fg = colors.fg,
})

vim.api.nvim_set_hl(0, "@variable.builtin", {
  fg = colors.fg_bright,
})

vim.api.nvim_set_hl(0, "@variable.parameter", {
  fg = colors.fg,
})

vim.api.nvim_set_hl(0, "@variable.member", {
  fg = colors.fg,
})


-- Constants

vim.api.nvim_set_hl(0, "@constant", {
  fg = colors.fg_bright,
})

vim.api.nvim_set_hl(0, "@constant.builtin", {
  fg = colors.accent,
})

vim.api.nvim_set_hl(0, "@constant.macro", {
  fg = colors.accent,
})


-- Functions

vim.api.nvim_set_hl(0, "@function", {
  fg = colors.accent,
})

vim.api.nvim_set_hl(0, "@function.builtin", {
  fg = colors.accent_bright,
})

vim.api.nvim_set_hl(0, "@function.call", {
  fg = colors.accent,
})

vim.api.nvim_set_hl(0, "@function.method", {
  fg = colors.accent,
})

vim.api.nvim_set_hl(0, "@function.method.call", {
  fg = colors.accent,
})


-- Keywords

vim.api.nvim_set_hl(0, "@keyword", {
  fg = colors.red,
})

vim.api.nvim_set_hl(0, "@keyword.function", {
  fg = colors.red,
})

vim.api.nvim_set_hl(0, "@keyword.return", {
  fg = colors.red,
})

vim.api.nvim_set_hl(0, "@keyword.operator", {
  fg = colors.red,
})


-- Types

vim.api.nvim_set_hl(0, "@type", {
  fg = colors.yellow,
})

vim.api.nvim_set_hl(0, "@type.builtin", {
  fg = colors.yellow,
})

vim.api.nvim_set_hl(0, "@type.definition", {
  fg = colors.yellow,
})


-- Strings

vim.api.nvim_set_hl(0, "@string", {
  fg = colors.fg,
})

vim.api.nvim_set_hl(0, "@string.documentation", {
  fg = colors.fg_muted,
})

vim.api.nvim_set_hl(0, "@string.escape", {
  fg = colors.accent,
})

vim.api.nvim_set_hl(0, "@string.special", {
  fg = colors.accent,
})


-- Numbers

vim.api.nvim_set_hl(0, "@number", {
  fg = colors.accent_bright,
})

vim.api.nvim_set_hl(0, "@number.float", {
  fg = colors.accent_bright,
})


-- Booleans

vim.api.nvim_set_hl(0, "@boolean", {
  fg = colors.yellow,
})


-- Operators

vim.api.nvim_set_hl(0, "@operator", {
  fg = colors.fg_bright,
})


-- Punctuation

vim.api.nvim_set_hl(0, "@punctuation.delimiter", {
  fg = colors.fg_muted,
})

vim.api.nvim_set_hl(0, "@punctuation.bracket", {
  fg = colors.fg,
})

vim.api.nvim_set_hl(0, "@punctuation.special", {
  fg = colors.accent,
})


-- Properties / attributes

vim.api.nvim_set_hl(0, "@property", {
  fg = colors.fg,
})

vim.api.nvim_set_hl(0, "@attribute", {
  fg = colors.yellow,
})

vim.api.nvim_set_hl(0, "@tag", {
  fg = colors.red,
})

vim.api.nvim_set_hl(0, "@tag.attribute", {
  fg = colors.yellow,
})

vim.api.nvim_set_hl(0, "@tag.delimiter", {
  fg = colors.fg_muted,
})


-- ============================================================================
-- DIAGNOSTICS
-- ============================================================================

vim.api.nvim_set_hl(0, "DiagnosticError", {
  fg = colors.red,
})

vim.api.nvim_set_hl(0, "DiagnosticWarn", {
  fg = colors.yellow,
})

vim.api.nvim_set_hl(0, "DiagnosticInfo", {
  fg = colors.fg_bright,
})

vim.api.nvim_set_hl(0, "DiagnosticHint", {
  fg = colors.accent,
})

vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", {
  undercurl = true,
  sp = colors.red,
})

vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", {
  undercurl = true,
  sp = colors.yellow,
})

vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", {
  undercurl = true,
  sp = colors.fg_bright,
})

vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", {
  undercurl = true,
  sp = colors.accent,
})


-- ============================================================================
-- GIT / DIFF
-- ============================================================================

vim.api.nvim_set_hl(0, "DiffAdd", {
  bg = "#1a241a",
  fg = colors.fg,
})

vim.api.nvim_set_hl(0, "DiffDelete", {
  bg = "#241717",
  fg = colors.red,
})

vim.api.nvim_set_hl(0, "DiffChange", {
  bg = "#24201a",
  fg = colors.yellow,
})

vim.api.nvim_set_hl(0, "DiffText", {
  bg = colors.bg_selection,
  fg = colors.fg_bright,
})

vim.api.nvim_set_hl(0, "GitSignsAdd", {
  fg = colors.fg,
})

vim.api.nvim_set_hl(0, "GitSignsChange", {
  fg = colors.accent,
})

vim.api.nvim_set_hl(0, "GitSignsDelete", {
  fg = colors.red,
})


-- ============================================================================
-- MATCHING BRACKETS
-- ============================================================================

vim.api.nvim_set_hl(0, "MatchParen", {
  bg = colors.bg_selection,
  fg = colors.accent_bright,
  bold = true,
})


-- ============================================================================
-- DIRECTORY / FILE BROWSER
-- ============================================================================

vim.api.nvim_set_hl(0, "Directory", {
  fg = colors.accent,
})

vim.api.nvim_set_hl(0, "NvimTreeFolderName", {
  fg = colors.fg,
})

vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", {
  fg = colors.accent,
})

vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", {
  fg = colors.fg_bright,
  bold = true,
})


-- ============================================================================
-- TITLES
-- ============================================================================

vim.api.nvim_set_hl(0, "Title", {
  fg = colors.accent,
  bold = true,
})

vim.api.nvim_set_hl(0, "Directory", {
  fg = colors.accent,
})


-- ============================================================================
-- TODO / NOTES
-- ============================================================================

vim.api.nvim_set_hl(0, "Todo", {
  bg = colors.accent,
  fg = colors.bg,
  bold = true,
})

