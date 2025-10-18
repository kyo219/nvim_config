-- lspsaga: VSCode風の LSP プレビューUI
return {
  "nvimdev/lspsaga.nvim",
  event = "LspAttach",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("lspsaga").setup({
      preview = { lines_above = 0, lines_below = 12 },
      ui = { border = "rounded" },
      symbol_in_winbar = { enable = false },
    })

    local map = vim.keymap.set
    map("n", "gp", "<cmd>Lspsaga peek_definition<CR>", { desc = "Peek Definition (Saga)" })
    map("n", "gP", "<cmd>Lspsaga peek_type_definition<CR>", { desc = "Peek Type Definition (Saga)" })
    map("n", "gr", "<cmd>Lspsaga finder<CR>", { desc = "LSP Finder (Saga)" })
    map("n", "gh", "<cmd>Lspsaga hover_doc<CR>", { desc = "Hover Doc (Saga)" })
    map("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { desc = "Next Diagnostic (Saga)" })
    map("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { desc = "Prev Diagnostic (Saga)" })
  end,
}
