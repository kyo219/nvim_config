-- lspsagaの代替: ネイティブLSP (nvim 0.11+) + snacks picker
-- rename/code action/referencesはネイティブ標準の grn / gra / grr を使う
---@type LazySpec
return {
  "AstroNvim/astrocore",
  opts = {
    mappings = {
      n = {
        ["gp"] = { function() require("snacks").picker.lsp_definitions() end, desc = "Peek Definition (picker)" },
        ["gP"] = { function() require("snacks").picker.lsp_type_definitions() end, desc = "Peek Type Definition (picker)" },
        ["gh"] = { function() vim.lsp.buf.hover() end, desc = "Hover Doc" },
        ["]e"] = { function() vim.diagnostic.jump { count = vim.v.count1, float = true } end, desc = "Next Diagnostic" },
        ["[e"] = { function() vim.diagnostic.jump { count = -vim.v.count1, float = true } end, desc = "Prev Diagnostic" },
      },
    },
  },
}
