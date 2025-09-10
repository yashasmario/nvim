require("dog.set")
require("dog.remap")

-- for error inline debug highlighting I think
vim.diagnostic.config({ virtual_text = { prefix = "●" } })

-- highlighting when yanking so you know you yanked (idk i stole it from lazy)
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking',
    group = vim.api.nvim_create_augroup('kickstart-highlighting-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- clock
-- the timer communicates colors.lua file to change themes

vim.g.base_colorscheme = "kanagawa-wave"
local function update_winbar()
  vim.opt.winbar = "%= %{strftime('%H:%M')}"

  local hour = tonumber(os.date("%H"))
  local mode = (hour >= 21 or hour < 6) and "dark" or "light"

  if vim.g.daynight ~= mode then
    vim.g.daynight = mode
    vim.cmd("colorscheme " .. vim.g.base_colorscheme)
  end
  vim.cmd("redrawstatus")
end
update_winbar()
vim.fn.timer_start(60 * 1000, function()
  update_winbar()
end, { ['repeat'] = -1 })
