return {
	"numToStr/Comment.nvim",
	event = "VeryLazy",
	opts = {
		toggler = {
			line = "gcc", -- Comentário de linha
			block = "gbc", -- Comentário de bloco
		},
		opleader = {
			line = "gc",
			block = "gb",
		},
		mappings = {
			basic = true,
			extra = false,
		},
	},
}
