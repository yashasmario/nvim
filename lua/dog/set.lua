vim.g.mapleader = " " 

-- block caret
vim.opt.guicursor = {
    "n-v-c:block",
    "i:block-blinkwait700-blinkon400-blinkoff250",
    "r-cr:hor20",
}

-- relative numbers
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

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
vim.opt.backup = false
local home = os.getenv("HOME") or os.getenv("USERPROFILE")
vim.opt.undodir = home .. "/.vim/undodir" 
vim.opt.undofile = true

-- search convenience highlight search and incremental search
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- more convenience
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

-- updates at faster intervals
vim.opt.updatetime = 50

-- idk looks cool
vim.opt.colorcolumn = "100"
