-- relative numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- tab space = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- annoying thing that obsidian does
vim.opt.wrap = false

-- you can use undo tree from the past(days)
vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- search convenience
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- more convenience
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

-- updates at faster intervals
vim.opt.updatetime = 50

-- idk looks cool
vim.opt.colorcolumn = "80"

vim.g.mapleader = " " 
