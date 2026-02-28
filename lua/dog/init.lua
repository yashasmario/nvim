require("dog.set")
require("dog.remap")

-- highlighting when yanking so you know you yanked (idk i stole it from lazy)
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking',
    group = vim.api.nvim_create_augroup('kickstart-highlighting-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- clock
local function intClock()
    -- colorscheme updation stuff
    vim.cmd[[colorscheme monoglow]]
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ffffff", bold = true, bg = "none" }) -- highlinting current line
    vim.api.nvim_set_hl(0, "LineNr", {fg = "#555555", bg = "none" }) -- removes annoying line number background
    vim.o.statuscolumn = "%s%=%{v:relnum == 0 ? v:lnum : v:relnum} |  "
end
intClock()

vim.fn.timer_start(60 * 1000, function()
    intClock()
end, { ['repeat'] = -1 })
