vim.g.dashboard_session_directory = '~/.cache/nvim/session'

vim.g.dashboard_custom_header = {
	' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
	' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
	' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
	' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
	' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
	' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
	'																												',
	'									  [ Arch Rocks btw ]									',
}

-- Default exec
vim.g.dashboard_default_executive ='telescope'

-- -- Hide Tabline
-- vim.cmd([[
-- set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2
-- ]])

-- -- Hide StatusLine
-- vim.cmd([[
-- set laststatus=0 | autocmd WinLeave <buffer> set laststatus=2
-- ]])
