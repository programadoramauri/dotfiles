local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local plugins = {}
local plugin_files = vim.fn.globpath(vim.fn.stdpath("config") .. "/lua/plugins", "*.lua", false, true)

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

for _, file in ipairs(plugin_files) do
  local module_name = file:match("lua[/\\]plugins[/\\](.+)%.lua$")
  if module_name then
    local ok, plugin_table = pcall(require, "plugins." .. module_name)
    if ok and type(plugin_table) == "table" then
      for _, plugin in ipairs(plugin_table) do
        table.insert(plugins, plugin)
      end
    else
      vim.notify("Erro ao carregar plugin module: " .. module_name, vim.log.levels.ERROR)
    end
  end
end

require("lazy").setup(plugins)

