return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim"
  },
  lazy = false,
  opts = {
    enable_git_status = true,
    enable_diagnostics = true,
    event_handlers = {
      {
        event = "file_opened",
        handler = function(file_path)
          require("neo-tree.command").execute({action = "close"})
        end,
      },
    },
  },
  keys = {
    {'<leader>ee', '<cmd>Neotree toggle<cr>', desc = "Toggle file explorer"},
    {'<leader>eb', '<cmd>Neotree buffers<cr>', desc="Buffer explorer"},
    {'<leader>eg', '<cmd>Neotree git_status<cr>', desc="Git explorer"},
  }
}
