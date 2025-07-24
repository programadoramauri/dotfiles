return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	cmd = "Telescope",
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Telescope find files" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Telescope live grep" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Telescope buffers" },
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Neovim help" },
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				prompt_prefix = "🔍 ",
				selection_caret = " ",
				path_display = { "Smart" },
				mappings = {
					i = {
						["<C-j>"] = actions.move_selection_next,
						["<C-k>"] = actions.move_selection_previous,
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
		})
	end,
}
