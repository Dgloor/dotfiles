local map = vim.api.nvim_set_keymap

-- Leader key
map('n', '<Space>', '', {})
vim.g.mapleader = ' '
 
-- Fuck Esc
map('i', 'ññ', '<Esc>', { noremap = true, })
map('i', 'ÑÑ', '<Esc>', { noremap = true})

-- " Quickly remove search highlights
map ('n', '<C-n>', ':nohl<CR>', { noremap = true })
 
-- Alternate way to save
-- nnoremap <silent> <C-s> :w<CR>
map('n','<C-s>', ':w<CR>', { noremap = true, silent= true})
 
-- " Alternate way to quit
-- nnoremap <silent> <C-Q> :wq!<CR>
map('n','<C-Q>', ':wq!<CR>', { noremap = true, silent= true})
 
-- Better window navigation
-- nnoremap <C-h> <C-w>h
-- nnoremap <C-j> <C-w>j
-- nnoremap <C-k> <C-w>k
-- nnoremap <C-l> <C-w>l
 
-- " Use alt + hjkl to resize windows
-- nnoremap <silent> <M-j> :resize -2<CR>
-- nnoremap <silent> <M-k> :resize +2<CR>
-- nnoremap <silent> <M-h> :vertical resize -2<CR>
-- nnoremap <silent> <M-l> :vertical resize +2<CR>
 
-- " Better indenting
-- vnoremap < <gv
-- vnoremap > >gv
 
-- TAB in general mode will move to text buffer
map('n', '<TAB>', ':bnext<cr>', { noremap=true})
-- SHIFT-TAB will go back
map('n', '<S-TAB>', ':bprevious<cr>', { noremap=true})
 
-- Splits
-- nnoremap <leader>v :vsplit<CR>
map('n', '<leader>v', ':vsplit<cr>', { noremap=true})
-- nnoremap <leader>h :split<CR>
map('n', '<leader>h', ':split<cr>', { noremap=true})
 
-- " Buffers
-- nnoremap <C-w> :bdelete<CR>
map('n', '<C-w>', ':bdelete<cr>', { noremap=true})
 
-- " Format
-- " nnoremap <C-A-l> :Format<CR>
 
-- " Fix identation
-- nnoremap <F7> gg=G<C-o>
-- 
-- " Remove whitespaces
-- nnoremap <F8> :%s/\s\+$//<CR>
 
-- Yolo 
-- cmap w!! w !sudo tee %

-- ***** Plugins Stuff *****
-- Goyo
-- nnoremap <leader>z :Goyo<CR>
-- 
-- " Floaterm
-- nnoremap <leader>r :FloatermNew lf<CR>
-- nnoremap <leader>fg :FloatermNew lazygit<CR>
-- nnoremap <leader>fp :FloatermNew python<CR>
-- nnoremap <leader>ff :FloatermNew fzf<CRk
-- "nnoremap <leader>m :MarkdownPreview<CR>
-- 
-- " Git Stuff
-- nmap <leader>gj <plug>(signify-next-hunk)
-- nmap <leader>gk <plug>(signify-prev-hunk)
-- nmap <leader>gJ 9999<leader>gj
-- nmap <leader>gK 9999<leader>gk
 

