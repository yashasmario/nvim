-- netrw
vim.keymap.set("n", "<leader>fv", vim.cmd.Ex)

vim.opt.guicursor = {
    "n-v-c:block",
    "i:block-blinkwait700-blinkon400-blinkoff250",
    "r-cr:hor20",
}

-- moving code block around in visual
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- page up, page down convenience
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- / find convenience
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- delete and paste
vim.keymap.set("x", "<leader>p", "\"_dP")

-- copies to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- edit word globally (word that cursor is under)
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
