local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local wk = require("which-key")

map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opts)

wk.add({
  {
    { "<leader>f",  group = "file" },
    { "<leader>ff", desc = "Find files" },
    { "<leader>fg", desc = "Find text (ripgrep)" },
    { "<leader>fb", desc = "Opened buffers" },
    { "<leader>fh", desc = "Help" },
  },
})
