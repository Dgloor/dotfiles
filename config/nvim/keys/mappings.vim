" Leader key
let mapleader=" "
nnoremap <Space> <Nop>

" Fuck Esc
inoremap ññ <Esc>
inoremap ÑÑ <Esc>

" Quickly remove search highlights
nmap <C-n> :nohl<CR>

" Alternate way to save
nnoremap <silent> <C-s> :w<CR>

" Alternate way to quit
nnoremap <silent> <C-Q> :wq!<CR>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use alt + hjkl to resize windows
nnoremap <silent> <M-j> :resize -2<CR>
nnoremap <silent> <M-k> :resize +2<CR>
nnoremap <silent> <M-h> :vertical resize -2<CR>
nnoremap <silent> <M-l> :vertical resize +2<CR>

" Better indenting
vnoremap < <gv
vnoremap > >gv

" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>

