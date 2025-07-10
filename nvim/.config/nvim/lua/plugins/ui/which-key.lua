return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
		vim.g.mapleader = " " -- garante que esteja definido
	end,
	opts = {
		plugins = {
			spelling = true, -- ativa sugestões para correção ortográfica
		},
		win = {
			border = "rounded",
		},
		layout = {
			align = "center",
		},
	},
}
