local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- Global options
o.backup = false                        -- Creates a backup file
o.clipboard = 'unnamedplus'             -- Copy paste between vim and everything else
o.completeopt = 'menuone,noselect'      -- Options for Insert mode completion
o.cursorline = true                     -- Enable highlighting of the current line
o.errorbells = false                    -- No beep or screen flash for error messages
o.guicursor=''                          -- Always show a block for cursor
o.hidden = true                         -- Required to keep multiple buffers open multiple buffers
o.hlsearch = false                      -- Disable highlighting while searching
o.ignorecase = true                     -- Case insensitive search
o.laststatus = 0                        -- 0: Hide status line , 2: Show status line
o.lazyredraw = true                     -- No redrawn the screen while executing macros
o.mouse = 'a'                           -- Enable mouse
o.pumheight = 10                        -- Makes popup menu smaller
o.ruler = true                          -- Show the cursor position all the time
o.scrolloff = 5                         -- Min number of screen lines to keep above and below the cursor
o.shiftwidth = 2                        -- Change the number of space characters inserted for indentation
o.shortmess = o.shortmess .. 'c'        -- Don't pass messages to |ins-completion-menu|.
o.showmode = true                       -- Show mode below status line
o.showtabline = 0                       -- Hide tabs
o.smartcase = true                      -- Smart case search if there is uppercase
o.softtabstop = 2                       -- Number of space to insert for a <Tab>
o.splitbelow = true                     -- Horizontal splits will automatically be below
o.splitright = true                     -- Vertical splits will automatically be to the right
o.swapfile = false                      -- Disable creating swap file
o.tabstop = 2                           -- Insert 2 spaces for a tab
o.termguicolors = true                  -- Enables 24-bit RGB color in the TUI
o.timeoutlen = 300                      -- By default timeoutlen is 1000 ms
o.updatetime = 250                      -- Faster completion

-- Window-local options
wo.number = true                        -- Line numbers
wo.numberwidth = 1                      -- Line numbers width
wo.relativenumber = true                -- Show numbers relative to current line
wo.signcolumn = 'yes'                   -- Draw a signcolumn
wo.t_Co = '256'                         -- Support 256 colors
wo.wrap = false                         -- Display long lines as just one line

-- Buffer-local options
bo.expandtab = true                     -- Converts tabs to spaces
bo.fileencoding = 'utf-8'               -- The encoding written to file
bo.smartindent = true                   -- Makes indenting smart

-- Come on Lua!
vim.cmd('au BufEnter * '                -- Stop newline continution of comments
..'set fo-=c fo-=r fo-=o')
-- vim.cmd('set iskeyword+=-')          -- Treat '-' separate words as a word text object
