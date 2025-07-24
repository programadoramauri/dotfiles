return {
  'windwp/nvim-autopairs',
  event = "InsertEnter",
  dependencies = "hrsh7th/nvim-cmp",
  opts = {
    check_ts = true,
    fast_wrap = {},
    disable_filetype = {"TelescopePrompt", "vim"},
  },
  config = function(_, opts)
    local autopairs = require("nvim-autopairs")
    autopairs.setup(opts)

    local cmp_autopairs = require('nvim-autopairs.completion.cmp')
    local cmp = require("cmp")
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end,
}
