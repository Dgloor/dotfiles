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

  -- Surround
  use 'tpope/vim-surround'

  -- Auto pairs
  use 'windwp/nvim-autopairs'

  -- Cool Icons
  use 'kyazdani42/nvim-web-devicons'

  -- Themes
  use {'dracula/vim', as = 'dracula'}

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Git
  use {
    'lewis6991/gitsigns.nvim',
    requires = {'nvim-lua/plenary.nvim'}
  }

  -- FZF native
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'}
    }
  }

  ------------------------------ NAH

  -- -- Home screen
  -- use 'glepnir/dashboard-nvim'

  -- -- Themes
  -- use 'navarasu/onedark.nvim'
  -- use 'Mofiqul/vscode.nvim'
  -- use { 'npxbr/gruvbox.nvim', requires = { 'rktjmp/lush.nvim' } }

  -- -- Status line
  -- use {
  --   'hoob3rt/lualine.nvim',
  --   requires = {
  --     'kyazdani42/nvim-web-devicons', opt = true
  --   }
  -- }

  -- -- Tabsss
  -- use {
  --   'akinsho/nvim-bufferline.lua',
  --   requires = {'kyazdani42/nvim-web-devicons'}
  -- }

  -- -- Focus mode
  -- use 'junegunn/goyo.vim'
  -- use 'junegunn/limelight.vim'

end)
