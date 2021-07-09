local u = require('utils')
require('modules/branch_name')

local stline = {
  '   ',                                  -- Some sugar
  '%f ',                                   -- File name (relative)
  '%y',                                    -- Fyle Type
  '%{&readonly||!&modifiable?"  ":""}',   -- Read-only
  '%m',                                    -- Modified [+] tag
  '%=',                                    -- Right align
  '%{b:gitbranch} ',                       -- Branch name
  '%{&fenc?&fenc:&enc} ',                  -- File enconding
  '[%{&ff}]  ',	                           -- File format
  ':%02c  ',                              -- Line, column current number
  '%2p%%'..'  %L ',                       -- Percentage of file  Total line number
}

vim.o.statusline = table.concat(stline)
