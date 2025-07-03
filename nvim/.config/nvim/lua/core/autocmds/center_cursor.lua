local group = vim.api.nvim_create_augroup("CenterCursor", { clear = true })

vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
  group = group,
  callback = function()
    local win = vim.api.nvim_get_current_win()
    local buf = vim.api.nvim_get_current_buf()
    local row = vim.api.nvim_win_get_cursor(win)[1]
    local total_lines = vim.api.nvim_buf_line_count(buf)

    -- Só centraliza se não estiver nas primeiras/últimas 5 linhas
    if row > 5 and row < (total_lines - 5) then
      vim.cmd("normal! zz")
    end
  end,
})
