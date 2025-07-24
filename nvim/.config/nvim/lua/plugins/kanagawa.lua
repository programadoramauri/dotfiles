return {
  "rebelot/kanagawa.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    compile = false,
    undercurl = false,
    commentStype = { italic = true },
    keywordStyle = { italic = true },
    statementStyle = { bold = true },
    transparent = true,
    dimInactive = false,
    terminalColors = true,
    theme = "wave",
    background = {
      dark = "wave",
      light = "lotus",
    },
  },
  config = function(_, opts)
    require("kanagawa").setup(opts)
    vim.cmd("colorscheme kanagawa")
  end,
}
