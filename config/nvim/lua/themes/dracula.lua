-- Just to show off my wallpaper
vim.api.nvim_command([[
  augroup ChangeBackgroudColour
    autocmd colorscheme * :hi normal guibg=NONE
  augroup END
]])

-- Colorscheme
vim.cmd [[silent! colorscheme dracula]]
