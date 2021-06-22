# TABLE OF CONTENT
# 1. Options
# 2. Variables
# 3. Modules
# 4. Plugins
# 5. Key Bindings
# 6. Prompt
# 7. Aliases
# 8. Apps Scripts
# 9. Autostart

# ========== Options ========== #
TERM=xterm-256color

# Changing directories
setopt AUTOCD

# Completion
setopt AUTO_LIST
setopt AUTO_PARAM_SLASH
setopt COMPLETE_ALIASES
setopt MENU_COMPLETE

# History
setopt APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# Initialization
setopt ALL_EXPORT

# Input/Output
unsetopt CORRECT

# Job Control
setopt AUTO_RESUME
setopt AUTO_CONTINUE
setopt LONG_LIST_JOBS 
setopt NOTIFY
setopt NO_HUP
unsetopt BG_NICE
unsetopt NO_BEEP

# ========== Variables ========= #
PATH="$HOME/.scripts/bspwm:$HOME/.scripts/media:$HOME/.scripts/polybar:$HOME/.scripts/rofi:$HOME/.scripts/shell-colors:$HOME/.scripts/etc:$PATH"
HISTFILE=$HOME/.zhistory
HISTSIZE=1000
SAVEHIST=1000
LS_COLORS='rs=0:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:';

# ========== Modules ========= #
autoload -Uz compinit; compinit
autoload -U history-search-end

zmodload zsh/complist
zmodload -a zsh/zpty zpty

zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

# Completion Styles
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# ========== Plugins ========= #
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/autojump/autojump.zsh
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

# ========== Key Bindings ========== #
# Zsh Vi Mode
bindkey -v
export KEYTIMEOUT=1

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# ========== Prompt ========== #
eval "$(starship init zsh)"

# ========== Aliases ========== #
# Better ls
alias ls='lsd '
alias l='ls -lL '
alias la='ls -lAL '
alias ll='ls -l '
alias lt='ls --tree '

# Navigation
alias ..='cd .. '
alias ...='cd ../.. '
alias .3='cd ../../.. '
alias .4='cd ../../../.. '
alias .5='cd ../../../../.. '
alias nz='nvim ~/.zshrc '

# Utils
alias le='less '
alias grep='rg '
alias cat='bat '
alias t='trash '
alias rm='trash -i '
alias cp='cp -i '
alias mv='mv -i '
alias q='exit '
alias ei='exit '
alias off='systemctl poweroff '

# System info
alias cpufetch='cpufetch --color amd '

# Pacman & AUR
alias pacin='sudo pacman -S '
alias pacre='sudo pacman -R '
alias yain='yay -S '
alias yase='yay -s '
alias yare='yay -R '

# Python
alias py='python '
alias bpy='bpython '
alias djrs='python manage.py runserver '

# Go
alias gob='go build '
alias goc='go clean '
alias god='go doc '
alias gof='go fmt '
alias goi='go install '
alias gor='go run '

# Git
alias g='git '
alias ga='g add '
alias gaa='ga --all '
alias gcb='g checkout -b '
alias gs='g status -s '
alias gc='g commit -m '
alias gcl='g clone '
alias gd='git diff '
alias glog='git log --oneline --decorate --graph '

# Apps
alias b='btm '
alias n='nvim '
alias ss='sudo systemctl '
alias ttime='tty-clock -S -c -b -n'
alias nspeed='speedtest-cli'

# ========== Aps Scritps ========== #

# Autojump into Lf
r() {
  if [ "$1" != "" ]; then
    if [ -d "$1" ]; then
      lf "$1"
    else
      lf "$(autojump $1)"
    fi
  else
    lf
  fi
  return $?
}

# ========== AutoStart ========== #
# pfetch
# neofetch
zwaves
