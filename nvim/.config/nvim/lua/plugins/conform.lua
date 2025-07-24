return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    formatters_by_ft = {
      lua = {"stylua"},
    },
    format_on_save = {
      lsp_fallback = {
        lsp_fallback = true,
        timeout_ms = 500
      }
    }
  }
}
