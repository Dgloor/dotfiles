require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'palenight',
    component_separators = {'', ''},
    section_separators = {'', ''},
    disabled_filetypes = {}
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
