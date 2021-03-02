Invoke-Expression (&starship init powershell)

# Remove Defaults
rename-item alias:\gc gk -force
rename-item alias:\gcm gkm -force
rename-item alias:\gl gll -force
rename-item alias:\gsn gsnn -force
rename-item alias:\gm gmm -force
rename-item alias:\gp gpp -force


function exit { exit }
Set-Alias -Name ei -Value exit

function neovim { neovim $args }
Set-Alias -Name n -Value nvim

function autojump { z $args }
Set-Alias -Name j -Value autojump

# Git
function git-status { git status }
Set-Alias -Name gs -Value git-status

function git-commit { git commit -m $args }
Set-Alias -Name gc -Value git-commit

function git-pull { git pull }
Set-Alias -Name gl -Value git-pull

function git-push { git push }
Set-Alias -Name gp -Value git-push

function git-addall { git add -A }
Set-Alias -Name gaa -Value git-addall

function git-diff { git diff $args }
Set-Alias -Name gd -Value git-diff

function git-log { git log }
Set-Alias -Name glog -Value git-log
