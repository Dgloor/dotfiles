local map = vim.api.nvim_set_keymap

-- Leader key
map('', '<Space>', '<Nop>', { noremap = true, silent=true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Fuck Esc
map('i', 'ññ', '<Esc>', { noremap = true })
map('i', 'ÑÑ', '<Esc>', { noremap = true })

-- " Quickly remove search highlights
map ('n', '<C-n>', ':nohl<CR>', { noremap = true })

-- Alternate way to save
map('n','<C-s>', ':w<CR>', { noremap = true, silent= true })

-- " Alternate way to quit
map('n','<C-Q>', ':wq!<CR>', { noremap = true, silent= true })

-- Better window navigation
-- nnoremap <C-h> <C-w>h
-- nnoremap <C-j> <C-w>j
-- nnoremap <C-k> <C-w>k
-- nnoremap <C-l> <C-w>l

-- " Use alt + hjkl to resize windows
-- map('n','<M-j>', ':rezise -2<cr>', { noremap = true, silent= true })
-- map('n','<M-k>', ':rezise +2<cr>', { noremap = true, silent= true })
-- map('n','<M-h>', ':vertical rezise -2<cr>', { noremap = true, silent= true })
-- map('n','<M-l>', ':vertical rezise +2<cr>', { noremap = true, silent= true })
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
map('n', '<S-TAB>', ':bprevious<cr>', { noremap=true })

-- Splits
map('n', '<leader>v', ':vsplit<cr>', { noremap=true })
map('n', '<leader>h', ':split<cr>', { noremap=true })

-- " Buffers
map('n', '<C-w>', ':bdelete<cr>', { noremap=true })


-- Fix identation
map('n', '<F7>', 'gg=G<C-o>', { noremap=true})

-- Remove whitespaces
-- nnoremap <F8> :%s/\s\+$//<CR>

-- Yolo
-- cmap w!! w !sudo tee %

-- " Format
-- " nnoremap <C-A-l> :Format<CR>

-- ***** Plugins Stuff *****
-- Goyo
map('n', '<leader>z', ':Goyo<cr>', { noremap=true })

-- " Floaterm
map('n', '<leader>r', ':FloatermNew lf<cr>', { noremap=true })
map('n', '<leader>fp', ':FloatermNew python<cr>', { noremap=true })

-- " Git Stuff
map('n', '<leader>gj', '<plug>(signify-next-hunk)', {})
map('n', '<leader>gk', '<plug>(signify-prev-hunk)', {})
map('n', '<leader>gJ', '9999<leader>gj)', {})
map('n', '<leader>gK', '9999<leader>gk)', {})
