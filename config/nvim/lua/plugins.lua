-- Install packer
local execute = vim.api.nvim_command
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '.. install_path)
end

vim.api.nvim_exec([[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]], false)

local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim'       -- Package manager

  -- Lsp
  use 'neovim/nvim-lspconfig'        -- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-compe'           -- Autocompletion plugin

  -- Git 
  use 'tpope/vim-fugitive'           -- Git commands in nvim
  use 'tpope/vim-rhubarb'            -- Fugitive-companion to interact with github
  use 'tpope/vim-commentary'         -- "gc" to comment visual regions/lines

  -- Status bar
  use 'itchyny/lightline.vim'        -- Fancier statusline
  
  -- use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}} }
  
  -- Focus mode
  use "junegunn/goyo.vim"
  use "junegunn/limelight.vim"

  end)
