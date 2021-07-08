-- General Stuff
require('settings')
require('plugins')
require('themes')

-- Lsp
require('lsp/lsp')
require('lsp/compe')
require('lsp/treesitter')

-- Modules
require('modules/vanilla_line')

-- Plug Config
require('plug-config/autopairs')
require('plug-config/bufferline')
require('plug-config/colorizer')
require('plug-config/comments')
require('plug-config/floaterm')
require('plug-config/git')
require('plug-config/goyo')
require('plug-config/telescope')

-- Key Mappings
require('keys/mappings')
