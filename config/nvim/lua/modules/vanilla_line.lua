require('modules/branch_name')

local stline = {
  '   ',                                  -- Some sugar
  '%f',                                    -- File name (relative)
  '%{&readonly||!&modifiable?"  ":""}',   -- Read-only flag
  '%{b:gitbranch}',                        -- Branch name
  '%m',                                    -- Modified [+] tag
  '%=',                                    -- Right align
  '%30{&ff}  ',	                           -- File format
  '%2l,%2c  ',                             -- Line, column current number
  '%3p%% ',			                           -- Percentage of file  Total line number
}

vim.o.statusline = table.concat(stline)
