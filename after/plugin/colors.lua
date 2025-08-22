function Colors(color)
	color = color or "kanagawa-wave" or "kanagawa-dragon"
	vim.cmd.colorscheme(color)
	
	-- uncomment for transparent background
	-- vim.api.nvim_set_hl(0, "Normal", { bg = 'none'})
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = 'none'})
end

Colors()
