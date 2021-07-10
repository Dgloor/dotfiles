" -- Global options --
colorscheme koehler
syntax on

set autoindent
set background=dark
set clipboard=unnamedplus
set encoding=utf-8
set expandtab
set fileencoding=utf-8
set foldmethod=indent
set foldnestmax=3
set hidden
set ignorecase
set incsearch
set iskeyword-=-
set lazyredraw
set mouse+=a
set noerrorbells
set nofoldenable
set noswapfile
set nowrap
set number
set relativenumber
set ruler
set scrolloff=3
set shiftwidth=2
set showtabline=0
set smartcase
set smartindent
set smarttab
set softtabstop=2
set splitbelow
set splitright
set t_Co=256
set tabstop=2
" set termguicolors

" -- Key Mappings --
let mapleader = ' '

inoremap ññ <Esc>
vnoremap ññ <Esc>
cnoremap ññ <Esc>

nnoremap <C-s> :w<CR>
nnoremap <C-q> :wq!<CR>

nnoremap <C-n> :set hlsearch!<CR>

vnoremap < <gv
vnoremap > <gv

nnoremap <F7> gg=G<G-o>
nnoremap <F8> :%s/\s\+$/<CR>

noremap <leader>v :vsplit<CR>
noremap <leader>h :vsplit<CR>

noremap <S-TAB> :bprevious<CR>
noremap <TAB> :bnext<CR>
noremap <C-w> :bdelete<CR>

nnoremap <leader>n :enew<CR>
