return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		signs = {
			add = { text = "┃" },
			delete = { text = "_" },
			topdelete = { text = "‾" },
			changedelete = { text = "~" },
		},
		current_line_blame = true,
		current_line_blame_opts = {
			virt_text = true,
			delay = 500,
			virt_text_pos = "eol",
		},
	},
}
