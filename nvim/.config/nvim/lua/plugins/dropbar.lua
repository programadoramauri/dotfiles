return {
	"bekaboo/dropbar.nvim",
	lazy = false,
	dependencies = {
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			config = function()
				require("telescope").load_extension("fzf")
			end,
		},
	},
	config = function()
		require("dropbar").setup({
			bar = {
				sources = function(buf, win)
					local sources = require("dropbar.sources")
					local utils = require("dropbar.utils")
					if vim.bo[buf].ft == "markdown" then
						return { sources.path, sources.markdown }
					elseif vim.bo[buf].buftype == "terminal" then
						return { sources.terminal }
					else
						return {
							sources.path,
							utils.source.fallback({ sources.lsp, sources.treesitter }),
						}
					end
				end,
			},
			menu = {
				quick_navigation = true,
				preview = true,
				keymaps = {
					["q"] = "<C-w>q",
					["<ESC>"] = "<C-w>q",
					["<CR>"] = function()
						local menu = require("dropbar.utils.menu").get_current()
						if menu then
							menu:click_at_cursor()
						end
					end,
				},
			},
		})
	end,
}
