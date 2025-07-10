return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim", -- base do telescope
      "nvim-tree/nvim-web-devicons", -- ícones nos resultados
    },
    cmd = "Telescope",
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 10,
      },
    },
  },
}
