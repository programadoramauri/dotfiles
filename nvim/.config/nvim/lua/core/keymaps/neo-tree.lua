-- lua/core/keymaps/neo-tree.lua

local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local wk = require("which-key")

map("n", "<leader>fe", "<cmd>Neotree toggle<CR>", opts)

wk.add({
	{
		{ "<leader>fe", desc = "Abrir/Fechar Neo-tree" },
	},
})
