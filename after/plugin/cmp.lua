local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },

  mapping = cmp.mapping.preset.insert({
    ['<CY>'] = cmp.mapping.complete(),  -- trigger completion
    ['<CR>'] = cmp.mapping.confirm({ select = true }),  -- confirm selection
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
  }),

  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
  })
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
vim.lsp.config['html'] = {
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
  cmd = { 'vscode-html-language-server', '--stdio' },
  filetypes = { 'html' },
}
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'html',
  callback = function()
    vim.lsp.start(vim.lsp.config['html'])
  end,
})
