local map = vim.api.nvim_set_keymap

local snoremap = { noremap = true, silent = true }
local noremap = { noremap = true }

-- Leader key
map('', '<Space>', '<Nop>', snoremap)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Fuck Esc
map('i', 'ññ', '<Esc>', noremap)
map('v', 'ññ', '<Esc>', noremap)
map('c', 'ññ', '<Esc>', noremap)

-- Disable some stuff
map('n', 'Q', '<nop>', noremap)
map('n', 'q:', '<nop>', noremap)

-- Keeping it centerd
map('n', 'n', 'nzzzv', noremap)
map('n', 'N', 'Nzzzv', noremap)

-- Moving text
map('n', '<leader>j', ':m .+1<CR>', noremap)
map('n', '<leader>k', ':m .-2<CR>', noremap)
map('v', 'J', ":m '>+1<CR>gv=gv", noremap)
map('v', 'K', ":m '<-2<CR>gv=gv", noremap)

-- Quickly remove search highlights
map ('n', '<C-n>', ':set hlsearch!<CR>', snoremap)

-- Alternate way to save
map('n','<C-s>', ':w<CR>', snoremap)

-- Alternate way to quit
map('n','<C-Q>', ':wq!<CR>', snoremap)

-- Better copy
map('n', 'Y', 'y$', snoremap)

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

-- Navigate visual lines rather than logical ones
map('n','j', 'gj', snoremap)
map('n','k', 'gk', snoremap)

-- Better indenting
map('v','<', '<gv', noremap)
map('v','>', '>gv', noremap)

-- Create a new empty buffer
map('n', '<leader>n', ':enew<CR>', noremap)

-- Buffers (replace with BufferLine)
map('n', '<C-w>', ':bdelete<CR>', snoremap)
map('n', '<TAB>', ':bnext<CR>', snoremap)
map('n', '<S-TAB>', ':bprevious<CR>', snoremap)

-- Splits
map('n', '<leader>v', ':vsplit<CR>', noremap)
map('n', '<leader>h', ':split<CR>', noremap)

-- Fix identation
map('n', '<F7>', 'gg=G<C-o>', noremap)

-- Remove whitespaces
map('n', '<F8>', ':%s/\\s\\+$//<CR>', noremap)

-- Zen Mode
map('n', '<F5>', ':set'
..' number!'
..' relativenumber!'
..' signcolumn=no'
..' <CR>'
, snoremap)


-- *************** Plugins Stuff ***************
-- -- Dashboard
-- map('n', '<leader>ss', ':<C-u>SessionSave<CR>', noremap)
-- map('n', '<leader>sl', ':<C-u>SessionLoad<CR>', noremap)
-- map('n', '<leader>se', ':<C-u>DashboardNewFile<CR>', snoremap)

-- -- BufferLine
-- Go to prev/next buffer
-- map('n', '<TAB>', ':BufferLineCycleNext<CR>', snoremap)
-- map('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', snoremap)
-- Move the current buffer backwards or forwards in the bufferline
-- map('n', '<leader>bl', ':BufferLineMoveNext<CR>', snoremap)
-- map('n', '<leader>bh', ':BufferLineMovePrev<CR>', snoremap)

-- -- Goyo
-- map('n', '<leader>z', ':Goyo<CR>', snoremap)
-- map('n', '<F5>', ':Limelight<CR>', snoremap)
-- map('n', '<F6>', ':Limelight!<CR>', snoremap)

-- Completion
map('i', '<Tab>', 'v:lua.tab_complete()', { expr = true })
map('i', '<C-e>', 'compe#close("<C-e>")', { expr = true, silent = true })
map('i', '<S-Tab>', 'v:lua.s_tab_complete()', { expr = true })
map('i', '<C-Space>', 'v:lua.tab_complete()', { expr = true })

-- Git Stuff
map('n', '<leader>gj', ':Gitsigns next_hunk<CR>', snoremap)
map('n', '<leader>gk', ':Gitsigns prev_hunk<CR>', snoremap)
map('n', '<leader>gp', ':Gitsigns preview_hunk<CR>', snoremap)
map('n', '<leader>gb', ':Gitsigns blame_line<CR>', snoremap)

-- Telescope
map('n', '<leader>fh', ':Telescope ', noremap)
map('n', '<leader>fw', ':Telescope live_grep<CR>', snoremap)
map('n', '<leader>r', ':Telescope find_files<CR>', snoremap)
map('n', '<leader>fo', ':Telescope oldfiles<CR>', snoremap)
map('n', '<leader>fi', ':Telescope help_tags<CR>', snoremap)
map('n', '<C-p>', ':Telescope buffers<CR>', snoremap)

-- Floaterm
map('n', '<leader>e', ':FloatermNew lf<CR>', snoremap)
map('n', '<leader>gg', ':FloatermNew lazygit<CR>', snoremap)

-- Colorizer
map('n', '<F9>', ':ColorizerToggle<CR>', snoremap)
