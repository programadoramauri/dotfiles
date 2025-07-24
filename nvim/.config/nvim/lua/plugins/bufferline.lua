return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = "VeryLazy",
	opts = {
		options = {
			mode = "buffers",
			numbers = "ordinal",
			diagnostics = "nvim_lsp",
			indicator = { style = "icon", icon = "▎" },
			separator_style = "slant",
			show_buffer_close_icons = true,
			show_close_icon = false,
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					highlight = "Directory",
					separator = true,
				},
			},
			hover = {
				enabled = true,
				delay = 200,
				reveal = { "close" },
			},
		},
	},
}
