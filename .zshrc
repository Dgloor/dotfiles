TERM=xterm-256color


# Zsh Options
# -------------------

unsetopt BG_NICE
unsetopt NO_BEEP
unsetopt CORRECT

setopt AUTOCD
setopt NOHUP
setopt NOTIFY
setopt AUTORESUME
setopt AUTOCONTINUE
setopt LONGLISTJOBS 
setopt MENUCOMPLETE
setopt COMPLETE_ALIASES

setopt AUTO_LIST
setopt AUTO_PARAM_SLASH
setopt AUTO_RESUME

setopt APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY

setopt ALL_EXPORT


# Zsh modules
# -------------------

autoload -Uz compinit; compinit
autoload -U history-search-end
zmodload -a zsh/stat stat
zmodload -a zsh/zpty zpty
zmodload -a zsh/zprof zprof
#zmodload -ap zsh/mapfile mapfile
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end


# Variables
# -------------------

PATH="$HOME/scripts:$HOME/scripts/media:$HOME/scripts/shell-colors:$HOME/scripts/bspwm:$HOME/scripts/rofi:$HOME/scripts/polybar:$HOME/.local/bin:/usr/local/bin:/usr/local/sbin/:$PATH"
HISTFILE=$HOME/.zhistory
HISTSIZE=1000
SAVEHIST=1000
HOSTNAME="`hostname`"
LS_COLORS='rs=0:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:';


# Key Bindings
# -------------------
# to add other keys to this hash, see: man 5 terminfo
typeset -g -A key

key[Home]="${terminfo[khome]}"
key[End]="${terminfo[kend]}"
key[Insert]="${terminfo[kich1]}"
key[Backspace]="${terminfo[kbs]}"
key[Delete]="${terminfo[kdch1]}"
key[Up]="${terminfo[kcuu1]}"
key[Down]="${terminfo[kcud1]}"
key[Left]="${terminfo[kcub1]}"
key[Right]="${terminfo[kcuf1]}"
key[PageUp]="${terminfo[kpp]}"
key[PageDown]="${terminfo[knp]}"
key[Shift-Tab]="${terminfo[kcbt]}"
key[Control-Left]="${terminfo[kLFT5]}"
key[Control-Right]="${terminfo[kRIT5]}"

[[ -n "${key[Home]}"      ]] && bindkey -- "${key[Home]}"       beginning-of-line
[[ -n "${key[End]}"       ]] && bindkey -- "${key[End]}"        end-of-line
[[ -n "${key[Insert]}"    ]] && bindkey -- "${key[Insert]}"     overwrite-mode
[[ -n "${key[Backspace]}" ]] && bindkey -- "${key[Backspace]}"  backward-delete-char
[[ -n "${key[Delete]}"    ]] && bindkey -- "${key[Delete]}"     delete-char
[[ -n "${key[Up]}"        ]] && bindkey -- "${key[Up]}"         up-line-or-history
[[ -n "${key[Down]}"      ]] && bindkey -- "${key[Down]}"       down-line-or-history
[[ -n "${key[Left]}"      ]] && bindkey -- "${key[Left]}"       backward-char
[[ -n "${key[Right]}"     ]] && bindkey -- "${key[Right]}"      forward-char
[[ -n "${key[PageUp]}"    ]] && bindkey -- "${key[PageUp]}"     beginning-of-buffer-or-history
[[ -n "${key[PageDown]}"  ]] && bindkey -- "${key[PageDown]}"   end-of-buffer-or-history
[[ -n "${key[Shift-Tab]}" ]] && bindkey -- "${key[Shift-Tab]}"  reverse-menu-complete
[[ -n "${key[Control-Left]}"  ]] && bindkey -- "${key[Control-Left]}"  backward-word
[[ -n "${key[Control-Right]}" ]] && bindkey -- "${key[Control-Right]}" forward-word

if (( ${+terminfo[smkx]} && ${+terminfo[rmkx]} )); then
	autoload -Uz add-zle-hook-widget
	function zle_application_mode_start { echoti smkx }
	function zle_application_mode_stop { echoti rmkx }
	add-zle-hook-widget -Uz zle-line-init zle_application_mode_start
	add-zle-hook-widget -Uz zle-line-finish zle_application_mode_stop
fi


# Completion Styles
# -------------------

zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'


# Plugins
# -------------------

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/autojump/autojump.zsh
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh


# Prompt
# --------------------

eval "$(starship init zsh)"


# Aliases
# -------------------

# Better ls

alias ls='lsd'
alias l='ls -lL'
alias la='ls -lAL'
alias ll='ls -l'
alias lt='ls --tree'

# Navigation

alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias nz='nvim ~/.zshrc'

# Utils
 
alias le='less'
alias t='trash '
alias rm='trash -i'
alias cp='cp -i'
alias mv='mv -i'
alias q='exit'
alias ei='exit'
alias off='systemctl poweroff '

# System info

alias nspeed='speedtest-cli'
alias cpufetch='cpufetch --color amd'

# Pacman & AUR
alias pacin='sudo pacman -S ' 
alias pacre='sudo pacman -R '
alias yain='yay -S '
alias yase='yay -s '
alias yare='yay -R '

# Python & Django

alias py='python '
alias bpy='bpython'
alias djrs='python manage.py runserver'

# GO

alias gob='go build'
alias goc='go clean'
alias god='go doc'
alias gof='go fmt'
alias goi='go install'
alias gor='go run'

# Git 

alias g='git '
alias ga='git add '
alias gaa='git add --all '
alias gcb='git checkout -b '
alias gs='git status -s '
alias gc='git commit -m '
alias gcl='git clone '
alias gp='git push'
alias gl='git pull'
alias gd='git diff'
alias glog='git log --oneline --decorate --graph'

# Apps 

alias b='btm '
alias n='nvim '
alias st='sudo systemctl start '
alias sp='sudo systemctl stop '
alias ttime='tty-clock -S -c -b -n'


# Zsh Vi Mode
# -------------------
bindkey -v
export KEYTIMEOUT=1

zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history


# Autjump into lf
# -------------------

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


# Start
# -------------------

# neofetch
pfetch
# zwaves
