" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


call plug#begin('~/.config/nvim/autoload/plugged')

" File Explorer
" Plug 'scrooloose/NERDTree'

" Cool Icons
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

" Better Syntax Support
Plug 'sheerun/vim-polyglot'

" Themes
Plug 'dracula/vim'

" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Status Line
Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

" Colorizer
" Plug 'junegunn/rainbow_parentheses.vim'
Plug 'norcalli/nvim-colorizer.lua'

" Better Comments
Plug 'tpope/vim-commentary'

" Start Scren
Plug 'mhinz/vim-startify'

call plug#end()


" Automatically install missing plugins on startup
autocmd VimEnter *
    \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
        \|   PlugInstall --sync | q
    \| endif
