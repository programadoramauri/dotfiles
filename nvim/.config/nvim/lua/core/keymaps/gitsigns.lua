local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local wk = require("which-key")

-- Atalhos do gitsigns
map("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", opts)
map("n", "<leader>gs", "<cmd>Gitsigns stage_hunk<CR>", opts)
map("n", "<leader>gu", "<cmd>Gitsigns undo_stage_hunk<CR>", opts)
map("n", "<leader>gb", "<cmd>Gitsigns blame_line<CR>", opts)
map("n", "<leader>gn", "<cmd>Gitsigns next_hunk<CR>", opts)
map("n", "<leader>gN", "<cmd>Gitsigns prev_hunk<CR>", opts)

-- Registro no which-key com formato correto
wk.add({
  {
    { "<leader>g",  group = "Git" },
    { "<leader>gp", desc = "Visualizar alteração" },
    { "<leader>gs", desc = "Stage trecho" },
    { "<leader>gu", desc = "Desfazer stage" },
    { "<leader>gb", desc = "Blame linha" },
    { "<leader>gn", desc = "Próxima alteração" },
    { "<leader>gN", desc = "Alteração anterior" },
  },
})
