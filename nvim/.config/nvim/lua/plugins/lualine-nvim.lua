return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"linrongbin16/lsp-progress.nvim",
	},
	opts = {
		options = {
			theme = "auto",
			icons_enabled = true,
			section_separators = { left = "", right = "" },
			component_separators = { left = "", right = "" },
			global_status = true,
			disabled_filetypes = {
				statusLine = { "NvimTree", "neo-tree" },
			},
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch", "diff", "diagnostics" },
			lualine_c = { { "filename", path = 1 } },
			lualine_x = { "encoding", "fileformat", "filetype" },
			lualine_y = { "progress" },
			lualine_z = { "location" },
		},
	},
}
