return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "lua",
          "php",
          "javascript",
          "typescript",
          "html",
          "css",
          "json",
          "bash",
          "markdown"
        },
        highlight = {enable = true},
        indent = {enable = true},
        auto_install = true,
      })
    end
  },
}
