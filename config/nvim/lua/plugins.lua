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

require('packer').startup(function()
  -- Dashboard
  -- use 'glepnir/dashboard-nvim'

  -- Package manager
  use 'wbthomason/packer.nvim'

  -- Lsp
  use 'neovim/nvim-lspconfig'

  -- Completion
  use 'hrsh7th/nvim-compe'

  -- Floating terminal
  use 'voldikss/vim-floaterm'

  -- Better comments
  use 'terrortylor/nvim-comment'

  -- Colorizer
  use 'norcalli/nvim-colorizer.lua'

  -- Icons
  use 'kyazdani42/nvim-web-devicons'

  -- Surround
  use 'tpope/vim-surround'

  -- Auto pairs
  use 'windwp/nvim-autopairs'

  -- Focus mode
  use 'junegunn/goyo.vim'
  use 'junegunn/limelight.vim'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Tabsss
  use {
    'akinsho/nvim-bufferline.lua',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

	-- Git
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  -- FZF native
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }

  -- Themes
  use 'dracula/vim'
  use 'Mofiqul/vscode.nvim'
	use 'navarasu/onedark.nvim'
  use {
    'npxbr/gruvbox.nvim',
    requires = { 'rktjmp/lush.nvim' }
  }

  -- Status Line
  use {
    'hoob3rt/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons', opt = true
    }
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'}
    }
  }
end)
