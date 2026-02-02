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
        'wnkz/monoglow.nvim',
        config = function()
            require('monoglow').setup {
                -- leave this setup function empty for default config
                -- or refer to the configuration section
                -- for configuration options
            }
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

    --lsp stuff
	use {
        'neovim/nvim-lspconfig',
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'L3MON4D3/LuaSnip',
	}

    --autopairs
    use {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
        config = function()
            require('nvim-autopairs').setup {}
        end
    }

    --neogit
    use {
        'NeogitOrg/neogit',
        requires = { { 
            'sindrets/diffview.nvim',
        } },
        cmd = { 'Neogit' }
    }

    --orgmode (emacs orgmode in neovim)
    use {
        'nvim-orgmode/orgmode',
    }
end)
