 
syntax enable				" Enables syntax highlighing
set encoding=utf-8			" The encoding displayed
set ruler				" Show the cursor position all the time

set nowrap                              " Display long lines as just one line

set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right

set autoindent                          " Good auto indent

set t_Co=256                            " Support 256 colors

set number                              " Line numbers
set relativenumber                      " Show numbers relative to current line
set numberwidth=1

set cursorline                          " Enable highlighting of the current line

set background=dark                     " tell vim what the background color looks like

set noshowmode                          " We don't need to see things like -- INSERT -- anymore

set noswapfile                          " Disable creating swap file
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set clipboard=unnamedplus               " Copy paste between vim and everything else
set ignorecase                          " case insensitive search
set smartcase                           " Smart case search if there is uppercase



cmap w!! w !sudo tee %

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
