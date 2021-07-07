-- Just to show off my wallpaper
-- vim.api.nvim_command([[
--   augroup ChangeBackgroudColour
--     autocmd colorscheme * :hi normal guibg=NONE
--   augroup END
-- ]])

-- Onedark Theme
-- vim.g.onedark_style = 'darker'

-- VsCode Theme
vim.g.vscode_style = 'dark'

-- Gruvbox Themes
vim.g.gruvbox_bold = true
vim.g.gruvbox_italic = true
vim.g.gruvbox_underline = true
vim.g.gruvbox_contrast_dark = 'medium'
vim.g.gruvbox_italicize_comments = true

-- ColorScheme
vim.cmd [[colorscheme gruvbox]]
