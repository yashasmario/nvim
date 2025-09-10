function Colors(color)
    if vim.g.daynight == "dark" then
        vim.cmd("colorscheme kanagawa-dragon")
    elseif vim.g.daynight == "light" then
        vim.cmd("colorscheme kanagawa-wave")
    end
    -- kanagawa-lotus, kanagawa-wave and kanagawa-dragon
    -- uncomment for transparent background
    -- vim.api.nvim_set_hl(0, "Normal", { bg = 'none'})
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = 'none'})
    -- styling
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ffffff", bold = true, bg = "none" }) -- highlinting current line
    vim.api.nvim_set_hl(0, "LineNr", {fg = "#555555", bg = "none" }) -- removes annoying line number background

    vim.o.statuscolumn = "%s%=%{v:relnum == 0 ? v:lnum : v:relnum} |  "
end

Colors()

vim.api.nvim_create_autocmd("ColorScheme",{
    callback = Colors,
})
