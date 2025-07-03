local keymaps_path = vim.fn.stdpath("config") .. "/lua/core/keymaps/"
local files = vim.fn.globpath(keymaps_path, "*.lua", false, true)

for _, file in ipairs(files) do
  local name = vim.fn.fnamemodify(file, ":t:r")
  if name ~= "init" then
    local ok, err = pcall(require, "core.keymaps." .. name)
    if not ok then
      vim.notify("Erro carregando keymaps: " .. name .. "\n" .. err, vim.log.levels.ERROR)
    end
  end
end
