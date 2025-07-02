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

wk.add({
    {"<leader>f", group = "file"},
    {"<leader>g", group = "git"},
    {"<leaderc>", group = "code"},
})
