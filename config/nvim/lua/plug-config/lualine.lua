require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'dracula',
    component_separators = {'', ''},
    section_separators = {'', ''},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {'mode'}, 
    lualine_b = {'branch'}, 
    lualine_c = {'filename'}, 
    lualine_x = {},  
    lualine_y = {'encoding', 'fileformat', 'filetype'},    
    lualine_z = {'location'} 
  },
  inactive_sections = {},
  tabline = {},
  extensions = {}
}
