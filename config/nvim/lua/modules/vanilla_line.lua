local vanilla_line = '  '

vim.o.statusline = vanilla_line
..'%{b:gitbranch}'                                 -- Branch name
..'  %t '																				 -- File name (short)
..' %r'                                            -- Read-only flag
..' %m'                                            -- Modified [+] tag
..' %='                                            -- Right align
..'  %Y'                                          -- File type
..'  %{&fileencoding?&fileencoding:&encoding}'	   -- File enconding
..'  %{&ff}'                                      -- File format
..'  %2p%%'..'  %l/%L '                          -- Percentage of file  Total line number

vim.cmd([[
function! StatuslineGitBranch()
  let b:gitbranch=""
  if &modifiable
    try
      let l:dir=expand('%:p:h')
      let l:gitrevparse = system("git -C ".l:dir." rev-parse --abbrev-ref HEAD")
      if !v:shell_error
        let b:gitbranch=" [  ".substitute(l:gitrevparse, '\n', '', 'g')." ]"
      endif
    catch
    endtry
  endif
endfunction

augroup GetGitBranch
  autocmd!
  autocmd VimEnter,WinEnter,BufEnter * call StatuslineGitBranch()
augroup END
]])
