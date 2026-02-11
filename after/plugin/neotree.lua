-- keymaps
vim.keymap.set('n', '<leader>n', '<Cmd>Neotree toggle<CR>')   


require('neo-tree').setup({
    -- config options

    -- filesystem
    filesystem = {
        filtered_items = {
            visible = true,
            hide_dotfiles = false,
            hide_gitignored = false,
        },
    }
})
