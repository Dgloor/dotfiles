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
  inactive_sections = {
    lualine_a = {}, 
    lualine_b = {}, 
    lualine_c = {}, 
    lualine_x = {},  
    lualine_y = {},    
    lualine_z = {} 
  },
  tabline = {
    -- lualine_a = {'filename'}, 
    -- lualine_b = {}, 
    -- lualine_c = {}, 
    -- lualine_x = {},  
    -- lualine_y = {},    
    -- lualine_z = {} 
  },
  extensions = {}
}
