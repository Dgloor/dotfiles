local u = require('utils')

vim.cmd([[
function! StatuslineGitBranch()
  let b:gitbranch=""
  if &modifiable
    try
      let l:dir=expand('%:p:h')
      let l:gitrevparse = system("git -C ".l:dir." rev-parse --abbrev-ref HEAD")
      if !v:shell_error
        let b:gitbranch="   ".substitute(l:gitrevparse, '\n', '', 'g')." "
      endif
    catch
    endtry
  endif
endfunction
]])

u.create_augroup('GetGitBranch' , {
	{ 'VimEnter,WinEnter,BufEnter * call StatuslineGitBranch()' },
})
