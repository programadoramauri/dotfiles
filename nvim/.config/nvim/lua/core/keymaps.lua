local map = vim.keymap.set
local opts = { noremap = true, silent = true}
local wk = require("which-key")

-- Leader key
vim.g.mapleader = " "

-- Window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Saving and exit
map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>q", ":q<CR>", opts)

-- Identation on visual mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Buffer Navigation
map("n", "<Tab>", ":bnext<CR>", opts)
map("n", "<S-Tab>", ":bprevious<CR>", opts)

-- Clear search highlights
map("n", "<Esc>", ":noh<CR>", opts)

map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opts)

map("n", "<leader>fe", "<cmd>Neotree toggle<CR>", opts)

wk.add({
  {
    { "<leader>f", group = "file" },
    { "<leader>fb", desc = "Opened buffers" },
    { "<leader>ff", desc = "Find files" },
    { "<leader>fg", desc = "Find text (ripgrep)" },
    { "<leader>fh", desc = "Help" },
    {"<leader>fe", desc = "File explorer"}
  }
})
