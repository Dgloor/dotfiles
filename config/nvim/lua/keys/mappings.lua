local map = vim.api.nvim_set_keymap

local snoremap = { noremap = true, silent = true }
local noremap = { noremap = true }

-- Leader key
map('', '<Space>', '<Nop>', snoremap)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Fuck Esc
map('i', 'ññ', '<Esc>', noremap)
map('i', 'ÑÑ', '<Esc>', noremap)

-- " Quickly remove search highlights
map ('n', '<C-n>', ':nohl<CR>', noremap)

-- Alternate way to save
map('n','<C-s>', ':w<CR>', snoremap)

-- " Alternate way to quit
map('n','<C-Q>', ':wq!<CR>', snoremap)

-- Better window navigation
map('n','<C-h>', '<C-w>h', snoremap)
map('n','<C-j>', '<C-w>j', snoremap)
map('n','<C-k>', '<C-w>k', snoremap)
map('n','<C-l>', '<C-w>l', snoremap)

-- Use alt + hjkl to resize windows
map('n','<M-j>', ':resize -2<CR>', snoremap)
map('n','<M-k>', ':resize +2<CR>', snoremap)
map('n','<M-h>', ':vertical resize -2<CR>', snoremap)
map('n','<M-l>', ':vertical resize +2<CR>', snoremap)

-- " Better indenting
map('v','<', '<gv', noremap)
map('v','>', '>gv', noremap)

-- TAB / SHIFT + TAB for move to next/prev buffer, pUp and pDown too
map('n', '<TAB>', ':bnext<CR>', noremap)
map('n', '<S-PageDown>', ':bnext<CR>', noremap)
map('n', '<S-TAB>', ':bprevious<CR>', noremap)
map('n', '<S-PageUp>', ':bprevious<CR>', noremap)

-- Splits
map('n', '<leader>v', ':vsplit<CR>', noremap)
map('n', '<leader>h', ':split<CR>', noremap)

-- " Buffers
map('n', '<C-w>', ':bdelete<CR>', noremap)

-- Fix identation
map('n', '<F7>', 'gg=G<C-o>', noremap)

-- Remove whitespaces
map('n', '<F8>', ':%s/\\s\\+$//<CR>', noremap)

-- Yolo
map('c', 'w!!', 'w !sudo tee %', {})


-- *************** Plugins Stuff ***************
-- Goyo
map('n', '<leader>z', ':Goyo<CR>', snoremap)

-- " Floaterm
map('n', '<leader>r', ':FloatermNew lf<CR>', noremap)
map('n', '<leader>fp', ':FloatermNew python<CR>', noremap)

-- " Git Stuff
map('n', '<leader>gj', ':Gitsigns next_hunk<CR>', snoremap)
map('n', '<leader>gk', ':Gitsigns prev_hunk<CR>', snoremap)
map('n', '<leader>gp', ':Gitsigns preview_hunk<CR>', snoremap)
map('n', '<leader>gb', ':Gitsings blame_line()<CR>', snoremap)

-- Telescope
map('n', '<leader>ff', ':Telescope find_files<CR>', noremap)
map('n', '<leader>fg', ':Telescope live_grep<CR>', noremap)
map('n', '<leader>fb', ':Telescope buffers<CR>', noremap)
map('n', '<leader>fh', ':Telescope help_tags<CR>', noremap)

-- Dashboard
map('n', '<leader>ss', ':<C-u>SessionSave<CR>', noremap)
map('n', '<leader>sl', ':<C-u>SessionLoad<CR>', noremap)
