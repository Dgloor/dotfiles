-- General Stuff
require('plugins')
require('settings')

-- Plug Config
-- source $HOME/.config/nvim/lsp/lsp.vim
-- source $HOME/.config/nvim/plug-config/home-screen.vim
-- source $HOME/.config/nvim/plug-config/git.vim
require('plug-config/plug-colorizer')
require('plug-config/floaterm')
require('plug-config/git')

-- Themes
require('themes/dracula')
require('themes/lightline')
-- source $HOME/.config/nvim/themes/airline.vim

-- Lsp
require('lsp/lsp')
 
-- Key Mappings
require('keys/mappings')
