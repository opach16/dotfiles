return {
  "christoomey/vim-tmux-navigator",
  event = "VeryLazy",

  config = function()
    vim.schedule(function()
      -- Add tmux-navigator mappings
      vim.keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>", { silent = true })
      vim.keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>", { silent = true })
      vim.keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>", { silent = true })
      vim.keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>", { silent = true })
    end)
  end,
}
