syntax enable				                    " Enables syntax highlighing

set autoindent                          " Good auto indent
set background=dark                     " tell vim what the background color looks like
set clipboard=unnamedplus               " Copy paste between vim and everything else
set cmdheight=1                         " More space for displaying messages
set conceallevel=0                      " So that I can see `` in markdown files
set cursorline                          " Enable highlighting of the current line
set encoding=utf-8											" The encoding displayed
set expandtab                           " Converts tabs to spaces
set fileencoding=utf-8                  " The encoding written to file
set formatoptions-=cro                  " Stop newline continution of comments
set hidden                              " Required to keep multiple buffers open multiple buffers
set ignorecase                          " case insensitive search
set iskeyword+=-                      	" treat dash separated words as a word text object"
set laststatus=0                        " Always display the status line
set mouse=a                             " Enable your mouse
set nobackup                            " This is recommended by coc
set noerrorbells                        " No beep or screen flash for error messages
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set noswapfile                          " Disable creating swap file
set nowrap                              " Display long lines as just one line
set nowritebackup                       " This is recommended by coc
set number                              " Line numbers
set numberwidth=1												" Line numbers width
set pumheight=10                        " Makes popup menu smaller
set relativenumber                      " Show numbers relative to current line
set ruler																" Show the cursor position all the time
set scrolloff=3                         " Min number of screen lines to keep above and below the cursor 
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set showtabline=2                       " Always show tabs
set signcolumn=yes                      " Draw a signcolumn
set smartcase                           " Smart case search if there is uppercase
set smartindent                         " Makes indenting smart
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set tabstop=2                           " Insert 2 spaces for a tab
set timeoutlen=300                      " By default timeoutlen is 1000 ms
set updatetime=300                      " Faster completion
"set guicursor=                          " Disable cursor-styling (always show a block)

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
cmap w!! w !sudo tee %
