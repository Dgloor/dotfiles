local api = vim.api


local vanilla_line = '  '

vim.o.statusline = vanilla_line
..' %t'                                            -- File name (short)
..' %m'                                            -- Modified [+] tag
..' %='                                            -- Right align
..' [ %Y ]'                                        -- File type
..' [ %{&fileencoding?&fileencoding:&encoding}'	   -- File enconding
..' / %{&ff} ]'                                    -- File format
..' [ %2p%%'..'  %L ]'                            -- Percentage of file  Total line number


-- TODO: Get mode and git branch name
-- system("git -C ".l:dir." rev-parse --abbrev-ref HEAD")  
