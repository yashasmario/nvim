require("dog")
require("dog.init")

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
-- Start Packer
require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- Automatically sync if Packer was just installed
  if packer_bootstrap then
    require('packer').sync()
  end
end)

-- lsp
vim.lsp.enable('pyright')
vim.lsp.enable('lua-language-server')
vim.lsp.enable('clangd')
vim.lsp.enable('ziggy')
vim.lsp.enable('ts_ls')
