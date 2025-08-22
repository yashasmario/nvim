require("dog.remap")
require("dog.set")

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
