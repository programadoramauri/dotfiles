local opt = vim.opt

-- Interface
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.termguicolors = true
opt.signcolumn = "yes"
opt.scrolloff = 8

-- Identation
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = false

-- Performance
opt.lazyredraw = true
opt.updatetime = 250
opt.timeoutlen = 300

-- Files & Backups
opt.swapfile = false
opt.backup = false
opt.undofile = true

-- Split windows
opt.splitbelow = true
opt.splitright = true

-- Mouse & Clipboard
opt.mouse = "a"
opt.clipboard = "unnamedplus"

-- Wrap
opt.wrap = false

opt.scrolloff = 10
