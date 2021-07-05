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
    description = { '  Find File               SPC f p ' },
    command = 'Telescope find_files',
  },
  b = {
    description = { '  Recently Used Files     SPC f o ' },
    command = 'Telescope oldfiles',
  },
  c = {
    description = { '  Find Word               SPC f w ' },
    command = 'Telescope live_grep',
  },
  d = {
    description = { '  Dotfiles Configs        SPC f d ' },
    command = 'lua require("telescope.builtin").find_files({search_dirs={"~/repos/dotfiles/"}})'
  },
  e = {
    description = { '  Neovim Configs          SPC f n ' },
    command = 'lua require("telescope.builtin").find_files({search_dirs={"~/.config/nvim/"}})'
  },
  f = {
    description = { '  Load Last Session       SPC s l ' },
    command = 'SessionLoad',
  },
  g = {
    description = { '  New Empty File          SPC e e ' },
    command = ':DashboardNewFile',
  }
}

-- Hide Tabline
vim.cmd([[
autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2
]])
