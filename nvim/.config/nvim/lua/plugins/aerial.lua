return {
	"stevearc/aerial.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		backends = { "treesitter", "lsp" },
		layout = {
			default_direction = "prefer_right",
			placement = "window",
			min_width = 30,
			max_width = { 40, 0.3 },
			resize_to_content = true,
		},
		attach_mode = "window",
		highlight_on_jump = 300,
		autojump = false,
		filter_kind = {
			"Class",
			"Constructor",
			"Enum",
			"Function",
			"Interface",
			"Module",
			"Method",
			"Struct",
		},
	},
	keys = {
		{ "<leader>a", "<cmd>AerialToggle!<cr>", desc = "Toggle Aerial" },
		{ "{", "<cmd>AerialPrev<cr>", desc = "Previous Symbol" },
		{ "}", "<cmd>AerialNext<cr>", desc = "Next Symbol" },
	},
}
