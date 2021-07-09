local stline = {
  '   ',                                  -- Some sugar
  '%f ',                                   -- File name (relative)
  '%y',                                    -- Fyle Type
  '%{&readonly||!&modifiable?"  ":""}',   -- Read-only
  '%m',                                    -- Modified [+] tag
  '%=',                                    -- Right align
  '%{&fenc?&fenc:&enc} ',                  -- File enconding
  '[%{&ff}]  ',	                           -- File format
  ':%2c  ',                               -- Line, column current number
  '%2p%%'..'  %L ',                       -- Percentage of file  Total line number
}

vim.o.statusline = table.concat(stline)
