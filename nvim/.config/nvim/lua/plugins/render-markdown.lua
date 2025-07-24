return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	ft = { "markdown", "rmd", "quarto", "vimwiki" },
	opts = {
		enabled = true,
		render_modes = { "n" },
		file_types = { "markdown", "rmd", "quarto", "vimwiki" },
		icons = {
			heading = {
				icons = { "󰲡 ", "󰲢 ", "󰲣 ", "󰲤 ", "󰲥 ", "󰲦 " },
			},
			bullet = { "◉", "○", "•" },
			checkbox = {
				unchecked = "☐",
				checked = "☑",
				partial = "❓",
			},
			quote = "┃",
			code = "",
			table = {
				top_left = "╭",
				top_right = "╮",
				bottom_left = "╰",
				bottom_right = "╯",
				horizontal = "─",
				vertical = "│",
			},
			callout = {
				note = { icon = "📝", highlight = "@comment" },
				info = { icon = "ℹ️", highlight = "@comment" },
				warning = { icon = "⚠️", highlight = "WarningMsg" },
				error = { icon = "🚨", highlight = "ErrorMsg" },
				tip = { icon = "💡", highlight = "Todo" },
			},
		},
	},
}
