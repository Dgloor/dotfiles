-- Install packer
local exec = vim.api.nvim_command
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	exec('!git clone https://github.com/wbthomason/packer.nvim '.. install_path)
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

	-- Treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	use 'nvim-treesitter/playground'

	-- Completion
	use 'hrsh7th/nvim-compe'

	-- Themes
	use 'dracula/vim'
	use 'morhetz/gruvbox'

	-- Git
	use 'tpope/vim-fugitive'
	use 'junegunn/gv.vim'
	use {
		'lewis6991/gitsigns.nvim',
		requires = { 'nvim-lua/plenary.nvim' }
	}

	-- Floating terminal
	use 'voldikss/vim-floaterm'

	-- Better comments
	use 'tpope/vim-commentary'

	-- Dashboard
	use 'glepnir/dashboard-nvim'

	-- Colorizer
	use 'norcalli/nvim-colorizer.lua'

	-- Surround
	use 'tpope/vim-surround'

	-- Focus mode
	use 'junegunn/goyo.vim'
	use 'junegunn/limelight.vim'

	-- Auto pairs
	use 'windwp/nvim-autopairs'

	-- Icons
	use 'kyazdani42/nvim-web-devicons'

	-- Status bar
	use {
		'hoob3rt/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	} 

	-- Tabsss
	use {
		'akinsho/nvim-bufferline.lua', 
		requires = 'kyazdani42/nvim-web-devicons'
	}

	-- FZF native
	use {
		'nvim-telescope/telescope-fzf-native.nvim', 
		run = 'make'
	}

	-- Telescope
	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
	}
end)
