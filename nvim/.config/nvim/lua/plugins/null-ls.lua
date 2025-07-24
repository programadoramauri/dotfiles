return {
	"nvimtools/none-ls.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			null_ls.builtins.diagnostics.selene.with({
				args = { "--display-style", "quiet", "-" },
			}),
		})
	end,
}
