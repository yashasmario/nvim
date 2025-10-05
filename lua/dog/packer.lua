-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
    
    -- telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

    -- colorscheme
	use{
		'rebelot/kanagawa.nvim',
		as = 'kanagawa',
		config = function()
			vim.cmd("colorscheme kanagawa-wave")
		end
	}

    --treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use {
		'nvim-treesitter/playground'
	}

    --harpoon
	use {

		'theprimeagen/harpoon'
	}

    --undotree
	use {

		'mbbill/undotree'
	}

    -- git tree viewer thing
	use {

		'tpope/vim-fugitive'
	}

    --lsp stuff
	use {
        'neovim/nvim-lspconfig',
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'L3MON4D3/LuaSnip',
	}
end)
