return {
	{
		"nvimtools/none-ls.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"williamboman/mason.nvim",
			"jay-babu/mason-null-ls.nvim",
		},
		config = function()
			local null_ls = require("null-ls")

			require("mason-null-ls").setup({
				ensure_installed = {
					"prettier",
					"stylua",
					"php-cs-fixer",
					"eslint_d",
				},
				automatic_installation = true,
			})

			null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua,
        },
				on_attach = function(client, bufnr)
					if client.supports_method("textDocument/formatting") then
						vim.api.nvim_buf_set_option(bufnr, "formatexpr", "")
						vim.api.nvim_create_autocmd("BufWritePre", {
							buffer = bufnr,
							callback = function()
								vim.lsp.buf.format({ bufnr = bufnr })
							end,
						})
					end
				end,
			})
		end,
	},
}
