vim.g.mapleader = " "

local wk = require("which-key")
local dropbar = require("dropbar.api")

wk.add({
	{
		mode = { "n" },
		{ "<leader>f", group = "file" },
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Open Buffehs" },
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Neovim help" },
	},
})

wk.add({
	{
		mode = { "n" },
		{ "<leader>l", group = "LSP & Diagnostics" },
		{ "<leader>lr", "<cmd>Telescope lsp_references<cr>", desc = "LSP References" },
		{ "<leader>d", "<cmd>Telescope diagnostics<cr>", desc = "Diagnostics" },
	},
})

wk.add({
	{
		mode = { "n" },
		{ "<leader>c", group = "Code & Format" },
		{
			"<leader>cf",
			function()
				require("conform").format()
			end,
			desc = "Format Code",
		},
	},
})

wk.add({
	{
		mode = { "n" },
		{ "<leader>g", group = "Git" },
		{ "<leader>gs", "<cmd>Git<cr>", desc = "Git Status (Fugitive)" },
		{ "<leader>gd", "<cmd>Gvdiffsplit<cr>", desc = "Diff current file (Fugitive)" },
		{ "<leader>gf", "<cmd>DiffviewFileHistory %<cr>", desc = "File history (Diffview)" },
		{ "<leader>gb", "<cmd>Gitsigns blame_line<cr>", desc = "Blame current line" },
		{ "<leader>glg", "<cmd>LazyGit<cr>", desc = "Open lazygit" },

		{ "<leader>ghp", "<cmd>GHOpenPR<cr>", desc = "Open Pull Request" },
		{ "<leader>ghi", "<cmd>GHOpenIssue<cr>", desc = "Open Issue" },
		{ "<leader>ghr", "<cmd>GHStartReview<cr>", desc = "Start Review" },
		{ "<leader>ghs", "<cmd>GHSubmitReview<cr>", desc = "Submit Review" },
		{ "<leader>ghn", "<cmd>GHNotifications<cr>", desc = "GitHub Notifications" },
	},
})

wk.add({
	{
		{ "<leader>t", group = "Terminal" },
		{ "<leader>tt", "<cmd>ToggleTerm<cr>", desc = "Toggle Default Terminal" },
		{ "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", desc = "Floating Terminal" },
		{ "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>", desc = "Vertical Terminal" },
		{ "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Horizontal Terminal" },
	},
})

wk.add({
	{
		{ "<leader>e", group = "File Explorer" },
		{ "<leader>ee", "<cmd>Neotree toggle<cr>", desc = "Toggle Neo-tree" },
		{ "<leader>er", "<cmd>Neotree reveal<cr>", desc = "Reveal Current File" },
	},
})

wk.add({
	{
		{ "<leader>p", group = "Plugins" },
		{ "<leader>pu", "<cmd>Lazy update<cr>", desc = "Update Plugins" },
		{ "<leader>ps", "<cmd>Lazy sync<cr>", desc = "Sync Plugins" },
		{ "<leader>pi", "<cmd>Lazy install<cr>", desc = "Install Plugins" },
		{ "<leader>pl", "<cmd>Lazy log<cr>", desc = "Lazy Log" },
	},
})

wk.add({
	{
		{ "<leader>;", dropbar.pick, { desc = "Pick breadcrumb" } },
		{ "[;", dropbar.goto_context_start, { desc = "Go to context start" } },
		{ "];", dropbar.select_next_context, { desc = "Next context" } },
	},
})
