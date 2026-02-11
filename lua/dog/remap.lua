-- netrw
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

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

-- jump to definition
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)

-- open config folder netrw (compatible with any os)
local last_file, last_pos
vim.api.nvim_create_user_command("Conf", function()
  -- save current file + caret position
  last_file = vim.fn.expand("%:p")
  last_pos = vim.api.nvim_win_get_cursor(0)

  vim.cmd("e " .. vim.fn.stdpath("config"))
end, {})
-- go back to previous buffer
vim.api.nvim_create_user_command("Back", function()
  if last_file and vim.fn.filereadable(last_file) == 1 then
    vim.cmd("e " .. last_file)
    if last_pos then
      vim.api.nvim_win_set_cursor(0, last_pos)
    end
  else
    print("No previous file recorded")
  end
end, {})

-- moving b/w splits/windows
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
