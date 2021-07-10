local u = require('utils')

-- Just to show off my wallpaper
u.create_augroup('ChangeBackgroundColour' , {
	{ 'colorscheme * :hi normal guibg=NONE' },
})

-- ColorScheme
vim.cmd [[colorscheme dracula]]

-- Onedark Theme
-- vim.g.onedark_style = 'darker'

-- VsCode Theme
-- vim.g.vscode_style = 'dark'

-- Gruvbox Theme
-- vim.g.gruvbox_bold = false
-- vim.g.gruvbox_italic = true
-- vim.g.gruvbox_underline = false
-- vim.g.gruvbox_contrast_dark = 'hard'
-- vim.g.gruvbox_italicize_comments = true
