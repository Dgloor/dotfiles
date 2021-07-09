require('modules/vanilla_line/branch_name')

local nvim_mode = require('modules/vanilla_line/nvim_mode')

local stline = {
  '%#WildMenu#',																	 -- Background
	'   ',																						 -- Some sugar
  '%#StatusLine#',																	 -- Background
  '%{b:gitbranch}',																	 -- Branch name
  '  %t ',																				 -- File name (tail)
  ' %r',																						 -- Read-only flag
  ' %m',																						 -- Modified [+] tag
  ' %=',																						 -- Right align
  ' [  %Y',																				 -- File type
  ' ] [ %{&fileencoding?&fileencoding:&encoding}',   -- File enconding
  ' ] [ %{&ff}',                                     -- File format
  ' ] [ Col:%2c',                                    -- Line, column current number
  ' ] [ %2p%%'..'  %L ]',					                 -- Percentage of file  Total line number
}

vim.o.statusline = table.concat(stline)
