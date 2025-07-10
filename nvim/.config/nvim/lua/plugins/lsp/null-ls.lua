return {
	{
		"nvimtools/none-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = { "williamboman/mason.nvim" },
		config = function()
			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					-- FORMATTERS
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.prettier,
					null_ls.builtins.formatting.phpcsfixer,
					-- LINTERS
					null_ls.builtins.diagnostics.phpcs,
					null_ls.builtins.diagnostics.eslint_d,
					null_ls.builtins.diagnostics.shellcheck,
					-- CODE ACTIONS
					null_ls.builtins.code_actions.gitsigns,
				},
				on_attach = function(client, bufnr)
					if client.supports_method("textDocument/formatting") then
						vim.api.nvim_buf_create_user_command(bufnr, "Format", function()
							vim.lsp.buf.format({ bufnr = bufnr })
						end, { desc = "Format current buffer with null-ls" })
					end
				end,
			})
		end,
	},
}
