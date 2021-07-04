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
map('n','<C-h>', '<C-w>h', { noremap = true, silent= true })
map('n','<C-j>', '<C-w>j', { noremap = true, silent= true })
map('n','<C-k>', '<C-w>k', { noremap = true, silent= true })
map('n','<C-l>', '<C-w>l', { noremap = true, silent= true })

-- Use alt + hjkl to resize windows
map('n','<M-j>', ':resize -2<cr>', { noremap = true, silent= true })
map('n','<M-k>', ':resize +2<cr>', { noremap = true, silent= true })
map('n','<M-h>', ':vertical resize -2<cr>', { noremap = true, silent= true })
map('n','<M-l>', ':vertical resize +2<cr>', { noremap = true, silent= true })

-- " Better indenting
map('v','<', '<gv', { noremap = true })
map('v','>', '>gv', { noremap = true })

-- TAB / SHIFT + TAB for move to next/prev buffer, pUp and pDown too
map('n', '<TAB>', ':bnext<cr>', { noremap=true })
map('n', '<S-PageDown>', ':bnext<CR>', { noremap=true })
map('n', '<S-TAB>', ':bprevious<cr>', { noremap=true })
map('n', '<S-PageUp>', ':bprevious<CR>', { noremap=true })

-- Splits
map('n', '<leader>v', ':vsplit<cr>', { noremap=true })
map('n', '<leader>h', ':split<cr>', { noremap=true })

-- " Buffers
map('n', '<C-w>', ':bdelete<cr>', { noremap=true })

-- Fix identation
map('n', '<F7>', 'gg=G<C-o>', { noremap=true })

-- Remove whitespaces
map('n', '<F8>', ':%s/\\s\\+$//<cr>', { noremap=true })

-- Yolo
map('c', 'w!!', 'w !sudo tee %', {})


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

-- Telescope
-- Find files using Telescope command-line sugar.
map('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<cr>', { noremap = true })
map('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<cr>', { noremap = true })
map('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<cr>', { noremap = true })
map('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<cr>', { noremap = true })

-- Dashboard
map('n', '<leader>ss', ':<C-u>SessionSave<CR>', {})
map('n', '<leader>sl', ':<C-u>SessionLoad<CR>', {})
