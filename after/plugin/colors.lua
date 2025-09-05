function Colors(color)
	color = color or "kanagawa-wave"
	vim.cmd.colorscheme(color)
	-- kanagawa-lotus, kanagawa-wave and kanagawa-dragon
	-- uncomment for transparent background
	-- vim.api.nvim_set_hl(0, "Normal", { bg = 'none'})
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = 'none'})
end

Colors()
