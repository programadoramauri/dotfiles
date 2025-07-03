local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local wk = require("which-key")

vim.g.mapleader = " "

map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

map("n", "<leader>w", ":w<CR>", opts)
map("n", "<leader>q", ":q<CR>", opts)

map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

map("n", "<Tab>", ":bnext<CR>", opts)
map("n", "<S-Tab>", ":bprevious<CR>", opts)

map("n", "<Esc>", ":noh<CR>", opts)

wk.add({
  {
    { "<leader>w", desc = "Salvar arquivo" },
    { "<leader>q", desc = "Fechar buffer" },
  },
})
