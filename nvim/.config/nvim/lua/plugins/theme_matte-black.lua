-- ============================================================================
-- Matte Black
-- Based on:
--   https://github.com/basecamp/omarchy
--   https://github.com/tahayvr/matteblack.nvim
--
-- Official Omarchy palette:
--   themes/matte-black/colors.toml
-- ============================================================================


-- ============================================================================
-- PLUGIN
-- ============================================================================

vim.pack.add({
  "https://github.com/tahayvr/matteblack.nvim",
})


-- ============================================================================
-- COLORS
--
-- Exact values from:
-- https://github.com/basecamp/omarchy/blob/master/themes/matte-black/colors.toml
-- ============================================================================

local colors = {
  accent = "#e68e0d",
  cursor = "#eaeaea",

  foreground = "#bebebe",
  background = "#121212",

  selection_foreground = "#bebebe",
  selection_background = "#515151",

  color0 = "#333333",
  color1 = "#D35F5F",
  color2 = "#FFC107",
  color3 = "#b91c1c",
  color4 = "#e68e0d",
  color5 = "#D35F5F",
  color6 = "#bebebe",
  color7 = "#bebebe",

  color8 = "#8a8a8d",
  color9 = "#B91C1C",
  color10 = "#FFC107",
  color11 = "#b90a0a",
  color12 = "#f59e0b",
  color13 = "#B91C1C",
  color14 = "#eaeaea",
  color15 = "#ffffff",
}


-- ============================================================================
-- BASE COLORSCHEME
-- ============================================================================

vim.o.background = "dark"

vim.cmd.colorscheme("matteblack")


-- ============================================================================
-- CORE EDITOR
--
-- These are explicitly overridden to match the official Omarchy palette.
-- ============================================================================

vim.api.nvim_set_hl(0, "Normal", {
  fg = colors.foreground,
  bg = colors.background,
})

vim.api.nvim_set_hl(0, "NormalNC", {
  fg = colors.foreground,
  bg = colors.background,
})

vim.api.nvim_set_hl(0, "NormalFloat", {
  fg = colors.foreground,
  bg = colors.background,
})

vim.api.nvim_set_hl(0, "Cursor", {
  fg = colors.background,
  bg = colors.cursor,
})

vim.api.nvim_set_hl(0, "CursorLine", {
  bg = "#1a1a1a",
})

vim.api.nvim_set_hl(0, "CursorColumn", {
  bg = "#1a1a1a",
})


-- ============================================================================
-- LINE NUMBERS
-- ============================================================================

vim.api.nvim_set_hl(0, "LineNr", {
  fg = colors.color8,
})

vim.api.nvim_set_hl(0, "CursorLineNr", {
  fg = colors.accent,
  bold = true,
})

vim.api.nvim_set_hl(0, "SignColumn", {
  fg = colors.color0,
  bg = colors.background,
})


-- ============================================================================
-- SELECTION / SEARCH
-- ============================================================================

vim.api.nvim_set_hl(0, "Visual", {
  fg = colors.selection_foreground,
  bg = colors.selection_background,
})

vim.api.nvim_set_hl(0, "VisualNOS", {
  fg = colors.selection_foreground,
  bg = colors.selection_background,
})

vim.api.nvim_set_hl(0, "Search", {
  fg = colors.background,
  bg = colors.accent,
})

vim.api.nvim_set_hl(0, "IncSearch", {
  fg = colors.background,
  bg = colors.color12,
})

vim.api.nvim_set_hl(0, "CurSearch", {
  fg = colors.background,
  bg = colors.color12,
})

vim.api.nvim_set_hl(0, "Substitute", {
  fg = colors.background,
  bg = colors.color10,
})

vim.api.nvim_set_hl(0, "MatchParen", {
  fg = colors.accent,
  bg = colors.color0,
  bold = true,
})


-- ============================================================================
-- FLOATING WINDOWS / SPLITS
-- ============================================================================

vim.api.nvim_set_hl(0, "FloatBorder", {
  fg = colors.color0,
  bg = colors.background,
})

vim.api.nvim_set_hl(0, "WinSeparator", {
  fg = colors.color0,
  bg = colors.background,
})

vim.api.nvim_set_hl(0, "VertSplit", {
  fg = colors.color0,
  bg = colors.background,
})


-- ============================================================================
-- STATUS / TABLINE
-- ============================================================================

vim.api.nvim_set_hl(0, "StatusLine", {
  fg = colors.foreground,
  bg = colors.background,
})

vim.api.nvim_set_hl(0, "StatusLineNC", {
  fg = colors.color8,
  bg = colors.background,
})

vim.api.nvim_set_hl(0, "TabLine", {
  fg = colors.color8,
  bg = colors.color0,
})

vim.api.nvim_set_hl(0, "TabLineFill", {
  bg = colors.background,
})

vim.api.nvim_set_hl(0, "TabLineSel", {
  fg = colors.color14,
  bg = colors.color0,
  bold = true,
})


-- ============================================================================
-- POPUPS / COMPLETION
-- ============================================================================

vim.api.nvim_set_hl(0, "Pmenu", {
  fg = colors.foreground,
  bg = colors.color0,
})

vim.api.nvim_set_hl(0, "PmenuSel", {
  fg = colors.color14,
  bg = colors.selection_background,
})

vim.api.nvim_set_hl(0, "PmenuSbar", {
  bg = colors.color0,
})

vim.api.nvim_set_hl(0, "PmenuThumb", {
  bg = colors.color8,
})

vim.api.nvim_set_hl(0, "WildMenu", {
  fg = colors.background,
  bg = colors.accent,
})


-- ============================================================================
-- COMMENTS
-- ============================================================================

vim.api.nvim_set_hl(0, "Comment", {
  fg = colors.color8,
  italic = true,
})

vim.api.nvim_set_hl(0, "SpecialComment", {
  fg = colors.color8,
  italic = true,
})


-- ============================================================================
-- STANDARD VIM SYNTAX
--
-- matteblack.nvim already provides the complete syntax layer.
-- These overrides align the most visible syntax groups with your palette.
-- ============================================================================

vim.api.nvim_set_hl(0, "Constant", {
  fg = colors.color4,
})

vim.api.nvim_set_hl(0, "String", {
  fg = colors.foreground,
})

vim.api.nvim_set_hl(0, "Character", {
  fg = colors.color2,
})

vim.api.nvim_set_hl(0, "Number", {
  fg = colors.color2,
})

vim.api.nvim_set_hl(0, "Float", {
  fg = colors.color2,
})

vim.api.nvim_set_hl(0, "Boolean", {
  fg = colors.color10,
})

vim.api.nvim_set_hl(0, "Identifier", {
  fg = colors.foreground,
})

vim.api.nvim_set_hl(0, "Function", {
  fg = colors.color1,
})

vim.api.nvim_set_hl(0, "Statement", {
  fg = colors.color4,
})

vim.api.nvim_set_hl(0, "Keyword", {
  fg = colors.color4,
})

vim.api.nvim_set_hl(0, "Conditional", {
  fg = colors.color4,
})

vim.api.nvim_set_hl(0, "Repeat", {
  fg = colors.color4,
})

vim.api.nvim_set_hl(0, "Operator", {
  fg = colors.foreground,
})

vim.api.nvim_set_hl(0, "Type", {
  fg = colors.color2,
})

vim.api.nvim_set_hl(0, "StorageClass", {
  fg = colors.color2,
})

vim.api.nvim_set_hl(0, "Structure", {
  fg = colors.color2,
})

vim.api.nvim_set_hl(0, "Typedef", {
  fg = colors.color2,
})

vim.api.nvim_set_hl(0, "PreProc", {
  fg = colors.color2,
})

vim.api.nvim_set_hl(0, "Include", {
  fg = colors.accent,
})

vim.api.nvim_set_hl(0, "Define", {
  fg = colors.color2,
})

vim.api.nvim_set_hl(0, "Macro", {
  fg = colors.color2,
})

vim.api.nvim_set_hl(0, "Special", {
  fg = colors.accent,
})

vim.api.nvim_set_hl(0, "SpecialChar", {
  fg = colors.color2,
})

vim.api.nvim_set_hl(0, "Delimiter", {
  fg = colors.color8,
})

vim.api.nvim_set_hl(0, "Tag", {
  fg = colors.color4,
})


-- ============================================================================
-- TREESITTER OVERRIDES
--
-- matteblack.nvim already configures a large Treesitter palette.
-- These keep the most important captures consistent with Omarchy.
-- ============================================================================

vim.api.nvim_set_hl(0, "@comment", {
  fg = colors.color8,
  italic = true,
})

vim.api.nvim_set_hl(0, "@variable", {
  fg = colors.foreground,
})

vim.api.nvim_set_hl(0, "@variable.builtin", {
  fg = colors.color14,
})

vim.api.nvim_set_hl(0, "@constant", {
  fg = colors.color4,
})

vim.api.nvim_set_hl(0, "@constant.builtin", {
  fg = colors.color4,
})

vim.api.nvim_set_hl(0, "@function", {
  fg = colors.color1,
})

vim.api.nvim_set_hl(0, "@function.call", {
  fg = colors.color1,
})

vim.api.nvim_set_hl(0, "@function.builtin", {
  fg = colors.color12,
})

vim.api.nvim_set_hl(0, "@function.method", {
  fg = colors.color4,
})

vim.api.nvim_set_hl(0, "@function.method.call", {
  fg = colors.color4,
})

vim.api.nvim_set_hl(0, "@keyword", {
  fg = colors.color4,
})

vim.api.nvim_set_hl(0, "@keyword.function", {
  fg = colors.color4,
})

vim.api.nvim_set_hl(0, "@keyword.return", {
  fg = colors.color4,
})

vim.api.nvim_set_hl(0, "@type", {
  fg = colors.color2,
})

vim.api.nvim_set_hl(0, "@type.builtin", {
  fg = colors.color2,
})

vim.api.nvim_set_hl(0, "@type.definition", {
  fg = colors.color2,
})

vim.api.nvim_set_hl(0, "@string", {
  fg = colors.foreground,
})

vim.api.nvim_set_hl(0, "@string.escape", {
  fg = colors.accent,
})

vim.api.nvim_set_hl(0, "@string.special", {
  fg = colors.accent,
})

vim.api.nvim_set_hl(0, "@number", {
  fg = colors.color2,
})

vim.api.nvim_set_hl(0, "@number.float", {
  fg = colors.color2,
})

vim.api.nvim_set_hl(0, "@boolean", {
  fg = colors.color10,
})

vim.api.nvim_set_hl(0, "@operator", {
  fg = colors.foreground,
})

vim.api.nvim_set_hl(0, "@punctuation.delimiter", {
  fg = colors.color8,
})

vim.api.nvim_set_hl(0, "@punctuation.bracket", {
  fg = colors.foreground,
})

vim.api.nvim_set_hl(0, "@punctuation.special", {
  fg = colors.accent,
})

vim.api.nvim_set_hl(0, "@property", {
  fg = colors.foreground,
})

vim.api.nvim_set_hl(0, "@attribute", {
  fg = colors.color2,
})

vim.api.nvim_set_hl(0, "@tag", {
  fg = colors.color4,
})

vim.api.nvim_set_hl(0, "@tag.attribute", {
  fg = colors.color2,
})

vim.api.nvim_set_hl(0, "@tag.delimiter", {
  fg = colors.color8,
})


-- ============================================================================
-- DIAGNOSTICS
-- ============================================================================

vim.api.nvim_set_hl(0, "DiagnosticError", {
  fg = colors.color1,
})

vim.api.nvim_set_hl(0, "DiagnosticWarn", {
  fg = colors.color2,
})

vim.api.nvim_set_hl(0, "DiagnosticInfo", {
  fg = colors.color14,
})

vim.api.nvim_set_hl(0, "DiagnosticHint", {
  fg = colors.accent,
})

vim.api.nvim_set_hl(0, "DiagnosticOk", {
  fg = colors.color6,
})

vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", {
  undercurl = true,
  sp = colors.color1,
})

vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", {
  undercurl = true,
  sp = colors.color2,
})

vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", {
  undercurl = true,
  sp = colors.color14,
})

vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", {
  undercurl = true,
  sp = colors.accent,
})


-- ============================================================================
-- DIFF
-- ============================================================================

vim.api.nvim_set_hl(0, "DiffAdd", {
  fg = colors.color6,
  bg = "#17201b",
})

vim.api.nvim_set_hl(0, "DiffDelete", {
  fg = colors.color1,
  bg = "#241717",
})

vim.api.nvim_set_hl(0, "DiffChange", {
  fg = colors.color2,
  bg = "#211e16",
})

vim.api.nvim_set_hl(0, "DiffText", {
  fg = colors.accent,
  bg = colors.selection_background,
  bold = true,
})


-- ============================================================================
-- GIT SIGNS
-- ============================================================================

vim.api.nvim_set_hl(0, "GitSignsAdd", {
  fg = colors.color6,
})

vim.api.nvim_set_hl(0, "GitSignsChange", {
  fg = colors.accent,
})

vim.api.nvim_set_hl(0, "GitSignsDelete", {
  fg = colors.color1,
})


-- ============================================================================
-- FOLDING
-- ============================================================================

vim.api.nvim_set_hl(0, "Folded", {
  fg = colors.color8,
  bg = colors.color0,
})

vim.api.nvim_set_hl(0, "FoldColumn", {
  fg = colors.color8,
  bg = colors.background,
})


-- ============================================================================
-- MESSAGES
-- ============================================================================

vim.api.nvim_set_hl(0, "Question", {
  fg = colors.accent,
})

vim.api.nvim_set_hl(0, "MoreMsg", {
  fg = colors.accent,
})

vim.api.nvim_set_hl(0, "ModeMsg", {
  fg = colors.color14,
  bold = true,
})

vim.api.nvim_set_hl(0, "WarningMsg", {
  fg = colors.color2,
})

vim.api.nvim_set_hl(0, "ErrorMsg", {
  fg = colors.color1,
})


-- ============================================================================
-- TODO
-- ============================================================================

vim.api.nvim_set_hl(0, "Todo", {
  fg = colors.background,
  bg = colors.color2,
  bold = true,
})


-- ============================================================================
-- EMBEDDED NEOVIM TERMINAL
--
-- Exact 16-color palette from official Omarchy colors.toml.
-- ============================================================================

vim.g.terminal_color_0 = colors.color0
vim.g.terminal_color_1 = colors.color1
vim.g.terminal_color_2 = colors.color2
vim.g.terminal_color_3 = colors.color3
vim.g.terminal_color_4 = colors.color4
vim.g.terminal_color_5 = colors.color5
vim.g.terminal_color_6 = colors.color6
vim.g.terminal_color_7 = colors.color7

vim.g.terminal_color_8 = colors.color8
vim.g.terminal_color_9 = colors.color9
vim.g.terminal_color_10 = colors.color10
vim.g.terminal_color_11 = colors.color11
vim.g.terminal_color_12 = colors.color12
vim.g.terminal_color_13 = colors.color13
vim.g.terminal_color_14 = colors.color14
vim.g.terminal_color_15 = colors.color15

vim.g.terminal_color_background = colors.background
vim.g.terminal_color_foreground = colors.foreground
