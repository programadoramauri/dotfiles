return {
	"kdheepak/lazygit.nvim",
	cmd = { "LazyGit", "LazyGitCurrentFile", "LazyGitFilter" },
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{ "<leader>lg", "<cmd>LazyGit<cr>", desc = "open Lazygit" },
	},
}
