-- Just to show off my wallpaper
-- vim.api.nvim_command([[
--   augroup ChangeBackgroudColour
--     autocmd colorscheme * :hi normal guibg=NONE
--   augroup END
-- ]])

-- Onedark Theme
-- require('onedark').setup{}

-- VsCode Theme
vim.g.vscode_style = "dark"

-- ColorScheme
vim.cmd [[silent! colorscheme dracula]]
