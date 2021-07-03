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
  -- Package manager
  use 'wbthomason/packer.nvim'

  -- Lsp
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'

  -- Git 
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'junegunn/gv.vim'

  -- Terminal 
  use 'voldikss/vim-floaterm'

  -- Better comments
  use 'tpope/vim-commentary'

  -- Start Scren
  use 'mhinz/vim-startify'

  -- Colorizer
  use 'norcalli/nvim-colorizer.lua'

  -- Surround
  use 'tpope/vim-surround'

  -- Status bar
  use 'itchyny/lightline.vim'
  
  
  -- Focus mode
  use 'junegunn/goyo.vim'
  use 'junegunn/limelight.vim'

  -- Themes
  use 'dracula/vim'
  
  -- Telescope 
  -- use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}} }

  end)
