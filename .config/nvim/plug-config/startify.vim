
let g:startify_custom_header = [
\ '         ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ',
\ '         ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ',
\ '         ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ',
\ '         ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ',
\ '         ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ',
\ '         ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ',
\]

let g:startify_session_dir = '~/.config/nvim/session'


let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   Files']                        },
        \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
        \ { 'type': 'sessions',  'header': ['   Sessions']                     },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
        \ ]


let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:webdevicons_enable_startify = 1
let g:startify_enable_special = 0
" let g:startify_files_number = 10

function! StartifyEntryFormat()
        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

let g:startify_bookmarks = [
        \ { 'd': '~/Documents/dotfiles/' },
        \ { 'p': '~/.config/polybar/config' },
        \ { 'b': '~/.config/bspwm/bspwmrc' },
        \ { 's': '~/.config/sxhkd/sxhkdrc' },
        \ { 'i': '~/.config/nvim/init.vim' },
        \ { 'z': '~/.zshrc' },
        \ ]

" Colors
highlight StartifyHeader  ctermfg=0
highlight StartifyPath    ctermfg=245
" highlight StartifyNumber  ctermfg=215
" highlight StartifyBracket ctermfg=240
" highlight StartifyFile    ctermfg=240
" highlight StartifySection ctermfg=240
" highlight StartifySlash   ctermfg=240
" highlight StartifySpecial ctermfg=240
" highlight StartifyFooter  ctermfg=240
