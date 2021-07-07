require'lualine'.setup {
  options = {
    icons_enabled = true,
    -- theme = 'auto',
    -- theme = 'dracula',
    theme = 'gruvbox',
    -- theme = 'gruvbox_material',
    -- theme = 'nightfly',
    -- theme = 'onedark',
    -- theme = 'palenight',
    -- theme = 'vscode',
    component_separators = {'', ''},
    section_separators = {'', ''},
    disabled_filetypes = {'dashboard'}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {},
  tabline = {},
  extensions = {}
}
