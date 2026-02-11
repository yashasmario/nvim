require("dog")
require("dog.init")

require("vim.lsp.health").check()

-- packer stuff (makes sure packer is installed if you're cloning to a diff machine)
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer()
-- start Packer
require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
-- automatically sync if Packer was just installed
  if packer_bootstrap then
    require('packer').sync()
  end
end)

-- lsp
vim.lsp.enable('pyright')
vim.lsp.enable('lua-language-server')
vim.lsp.enable('clangd')
vim.lsp.enable('zig')
vim.lsp.enable('ts_ls')
vim.lsp.enable('gopls')

-- more lsp stuff (asks active lsp for <C-x><C-o> autocompletions)
-- function that runs when LSP attaches to a buffer
local on_attach = function(client, bufnr)
  vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"
end
