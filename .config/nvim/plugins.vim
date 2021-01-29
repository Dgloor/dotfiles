
" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    "autocmd VimEnter * PlugInstall
    autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


call plug#begin('~/.config/nvim/autoload/plugged')

" Themes
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'sjl/badwolf'
Plug 'nikolvs/vim-sunbather'
Plug 'ajmwagar/vim-deus'
Plug 'romgrk/doom-one.vim'

" Cool Icons
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

" File Explorer
Plug 'scrooloose/NERDTree'

" Better Comments
Plug 'tpope/vim-commentary'

" Easymotion
Plug 'easymotion/vim-easymotion'

" Surround
Plug 'tpope/vim-surround'

" auto set indent settings
Plug 'tpope/vim-sleuth'

" Better Syntax Support
Plug 'sheerun/vim-polyglot'

" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'

" Closetags
Plug 'alvan/vim-closetag'

" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Ranger
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

" Lf
Plug 'ptzz/lf.vim'
Plug 'rbgrouleff/bclose.vim'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
Plug 'junegunn/fzf.vim'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'rhysd/git-messenger.vim'

" Terminal
Plug 'voldikss/vim-floaterm'

" See what keys do like in emacs
Plug 'liuchengxu/vim-which-key'

" Zen mode
Plug 'junegunn/goyo.vim'

" Find and replace
Plug 'brooth/far.vim'

" Auto change html tags
Plug 'AndrewRadev/tagalong.vim'

" live server
Plug 'turbio/bracey.vim'

" Smooth scroll
Plug 'psliwka/vim-smoothie'

" Colorizer
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'norcalli/nvim-colorizer.lua'

" Debugging
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'

" Status Line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Snippets
" Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'

" ------------- Languages

" vuejs
Plug 'posva/vim-vue'
Plug 'leafOfTree/vim-vue-plugin'

" javascript
Plug 'jelera/vim-javascript-syntax'

" Go
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}

" c
Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
Plug 'ludwig/split-manpage.vim'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" html
Plug 'hail2u/vim-css3-syntax'
Plug 'gko/vim-coloresque'
Plug 'tpope/vim-haml'

" Start Scren
Plug 'mhinz/vim-startify'


call plug#end()


" Automatically install missing plugins on startup
autocmd VimEnter *
    \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
        \|   PlugInstall --sync | q
    \| endif
