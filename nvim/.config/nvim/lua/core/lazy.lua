local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

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

require("lazy").setup({
	spec = {
		{ import = "plugins" },
		{ import = "plugins.lsp" },
		{ import = "plugins.ui" },
		{ import = "plugins.editor" },
    { import = "plugins.completion" },
    {import = "plugins.navigation"},
    {import = "plugins.git"}
	},
	checker = { enabled = true },
})
