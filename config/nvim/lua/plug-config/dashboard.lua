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

vim.g.dashboard_custom_footer = {
  -- ' “It compiles; ship it.” '
  -- ' “There is no Ctrl-Z in life.” '
  -- ' “There’s no place like 127.0.0.1.” '
  -- ' ”It works on my machine” '
  ' “When all else fails … reboot.” '
}
vim.g.dashboard_default_executive ='telescope'
vim.g.dashboard_session_directory = '~/.config/nvim/session'
vim.g.dashboard_custom_section = {
	a = {
		description = { '  Find File           ' },
		command = 'Telescope find_files',
	},
	b = {
		description = { '  Recently Used Files ' },
		command = 'Telescope oldfiles',
	},
	c = {
		description = { '  Load Last Session   ' },
		command = 'SessionLoad',
	},
	d = {
		description = { '  Find Word           ' },
		command = 'Telescope live_grep',
	},
	e = {
		description = { '  Dotfiles Configs    ' },
		command = 'Telescope file_browser cwd="~/repos/dotfiles/"',
	},
	f = {
		description = { '  Neovim Configs      ' },
		command = 'Telescope file_browser cwd="~/.config/nvim/lua"',
	},
	g = {
		description = { '  New Empty File      ' },
		command = ':DashboardNewFile',
	}
}

-- Hide Tabline
vim.cmd([[
autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2
]])
