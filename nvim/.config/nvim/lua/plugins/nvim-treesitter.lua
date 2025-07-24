return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },
	dependencies = {
		"nvim-treesitter/nvim-treesitter-context",
		"windwp/nvim-ts-autotag",
		"hiphish/rainbow-delimiters.nvim",
		"nvim-treesitter/playground",
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	opts = {
		options = {
			ensure_installed = { "lua", "markdown", "markdown_inline" },
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			fold = { enable = true },
			indent = { enable = true },
			autotag = { enable = true },
			context_commentstring = { enable = true },
			textobjects = {
				select = {
					enable = true,
					lookahead = true,
					keymaps = {
						["af"] = "@function.outer",
						["if"] = "@function.inner",
						["ac"] = "@class.outer",
						["ic"] = "@class.inner",
					},
				},
			},
		},
	},
	config = function(_, opts)
		-- Adiciona rainbow manualmente após o plugin estar carregado
		local ok, rainbow = pcall(require, "rainbow-delimiters")
		if ok then
			opts.rainbow = {
				enable = true,
				query = "rainbow-delimiters",
				strategy = rainbow.strategy["global"],
			}
		end

		require("nvim-treesitter.configs").setup(opts)
	end,
}
