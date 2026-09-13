vim.pack.add({
  "https://github.com/Shatur/neovim-ayu",
})

vim.o.background = "dark"
vim.cmd.colorscheme("ayu")

vim.api.nvim_set_hl(0, "Normal", { bg = "#111111", fg = "#cccccc" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "#111111", fg = "#cccccc" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#222222", })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#555555", })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#e6a23c", bold = true, })
