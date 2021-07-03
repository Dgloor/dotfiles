-- Goyo & Limelight Integration
vim.cmd [[
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
]]

-- Limelight
vim.g.limelight_conceal_ctermfg = 'gray'
vim.g.limelight_conceal_guifg = 'gray'
