require("dog.set")
require("dog.remap")

-- for error inline debug highlighting I think
vim.diagnostic.config({ virtual_text = true })

-- highlighting when yanking so you know you yanked (idk i stole it from lazy)
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking',
    group = vim.api.nvim_create_augroup('kickstart-highlighting-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- clock
local function update_winbar()
  vim.opt.winbar = "%= %{strftime('%H:%M')}"
  vim.cmd("redrawstatus")
end
update_winbar()
vim.fn.timer_start(100, function()
  update_winbar()
end, { ['repeat'] = -1 })

