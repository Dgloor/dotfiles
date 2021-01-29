"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/


" General Settings
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/keys/mappings.vim

" Themes
source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/themes/onedark.vim
" source $HOME/.config/nvim/themes/sunbather.vim

" Plugin Config
source $HOME/.config/nvim/keys/which-key.vim
source $HOME/.config/nvim/plug-config/coc/coc.vim 
source $HOME/.config/nvim/plug-config/coc/coc-extensions.vim
source $HOME/.config/nvim/plug-config/vim-commentary.vim
source $HOME/.config/nvim/plug-config/rnvimr.vim
" source $HOME/.config/nvim/plug-config/lf.vim
source $HOME/.config/nvim/plug-config/floaterm.vim
source $HOME/.config/nvim/plug-config/closetags.vim 
source $HOME/.config/nvim/plug-config/rainbow.vim
source $HOME/.config/nvim/plug-config/easymotion.vim
source $HOME/.config/nvim/plug-config/fzf.vim 
source $HOME/.config/nvim/plug-config/home.vim
source $HOME/.config/nvim/plug-config/emmet.vim

luafile $HOME/.config/nvim/lua/plug-colorizer.lua

" source $HOME/.config/nvim/plug-config/far.vim
" source $HOME/.config/nvim/plug-config/markdown-preview.vim

" source $HOME/.config/nvim/plug-config/better-whitespace.vim   ???
" luafile $HOME/.config/nvim/lua/nvcodeline.lua ???
" luafile $HOME/.config/nvim/lua/treesitter.lua ???
" source $HOME/.config/nvim/plug-config/vim-rooter.vim ???
" source $HOME/.config/nvim/plug-config/gitgutter.vim ??? 
" source $HOME/.config/nvim/plug-config/git-messenger.vim ??? 
" source $HOME/.config/nvim/plug-config/barbar.vim    ??? 
" source $HOME/.config/nvim/plug-config/tagalong.vim  ??? 
" source $HOME/.config/nvim/plug-config/bracey.vim    ??? 
" source $HOME/.config/nvim/plug-config/asynctask.vim ??? 
" source $HOME/.config/nvim/plug-config/window-swap.vim ??? 
" source $HOME/.config/nvim/plug-config/neovide.vim   ??? 
" source $HOME/.config/nvim/plug-config/sneak.vim
" source $HOME/.config/nvim/plug-config/illuminate.vim
" source $HOME/.config/nvim/plug-config/vista.vim
" source $HOME/.config/nvim/plug-config/xtabline.vim
" source $HOME/.config/nvim/plug-config/ale.vim

inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
