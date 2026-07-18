-- 定義をジャンプせずプレビューする (元lspsagaのpeek相当、ネイティブgdはジャンプしてしまう)
-- hover/rename/診断ジャンプ等はネイティブ標準 (K / grn / gra / grr / ]d / [d) を使う
---@type LazySpec
return {
  "AstroNvim/astrocore",
  opts = {
    mappings = {
      n = {
        ["gp"] = { function() require("snacks").picker.lsp_definitions() end, desc = "Peek Definition (picker)" },
        ["gP"] = { function() require("snacks").picker.lsp_type_definitions() end, desc = "Peek Type Definition (picker)" },
      },
    },
  },
}
