" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


call plug#begin('~/.config/nvim/autoload/plugged')

" Cool Icons
Plug 'ryanoasis/vim-devicons'

" Better Syntax Support
Plug 'sheerun/vim-polyglot'

" Themes
Plug 'dracula/vim'

" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Status Line
Plug 'vim-airline/vim-airline'

" Colorizer
Plug 'norcalli/nvim-colorizer.lua'

" Better Comments
Plug 'tpope/vim-commentary'

" Surround
Plug 'tpope/vim-surround'

" Start Scren
Plug 'mhinz/vim-startify'

" Terminal
Plug 'voldikss/vim-floaterm'

" Git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

" Zen mode
Plug 'junegunn/goyo.vim'

" HTML & CSS
"Plug 'mattn/emmet-vim'

" Markown
"Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" File Explorer
" Plug 'scrooloose/NERDTree'

call plug#end()


" Automatically install missing plugins on startup
autocmd VimEnter *
    \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
        \|   PlugInstall --sync | q
    \| endif
