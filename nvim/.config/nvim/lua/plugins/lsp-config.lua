return {
	"neovim/nvim-lspconfig",
	dependencies = { "folke/neodev.nvim" },
	config = function()
		require("neodev").setup({})

		local lspconfig = require("lspconfig")
		lspconfig.lua_ls.setup({
			settings = {
				Lua = {
					runtime = { version = "LuaJIT" },
					diagnostics = { globals = { "vim" } },
					workspace = {
						checkThirdParty = false,
						library = {
							vim.env.VIMRUNTUME,
							"${3rd}/luv/library",
							"${3rd}/busted/library",
						},
					},
					telemetry = { enable = false },
				},
			},
		})

		lspconfig.intelephense.setup({
			settings = {
				intelephense = {
					files = { maxSize = 5000000 },
				},
			},
			on_attach = function(client, bufnr)
				if client.server_capabilities.documentFormattingProvider then
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
}
