return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		opts = {
			ensure_installed = {
				"lua",
				"php",
				"javascript",
				"typescript",
				"html",
				"css",
				"json",
				"bash",
				"markdown",
			},
			highlight = { enable = true },
			indent = { enable = true },
			auto_install = true,
		},
	},
}
