" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


call plug#begin('~/.config/nvim/autoload/plugged')


" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Cool Icons
Plug 'ryanoasis/vim-devicons'

" Better Syntax Support
Plug 'sheerun/vim-polyglot'





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
