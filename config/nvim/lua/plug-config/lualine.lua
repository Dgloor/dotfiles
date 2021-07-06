require'lualine'.setup {
  options = {
    icons_enabled = true,
    -- theme = 'auto',
    theme = 'palenight',
    -- theme = 'dracula',
    -- theme = 'nightfly',
    -- theme = 'vscode',
    -- theme = 'gruvbox_material',
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
