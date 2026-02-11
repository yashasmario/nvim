-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- telescope
    use {
        'nvim-telescope/telescope.nvim',
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
        run = ':TSUpdate',
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

    -- neotree
    use({
        'nvim-neo-tree/neo-tree.nvim',
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons",
        }
    })

    --dashboard (maybe some other time)
    --[[
    use {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
                -- config
            }
        end,
        requires = {'nvim-tree/nvim-web-devicons'}
    }
    ]]
end)
