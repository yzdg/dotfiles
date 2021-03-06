# History
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="${HOME}/.cache/zsh/history"

# Alias
alias l="ls -alFh"
alias lt="ls -alFht"
alias ga="git add"
alias gd="git diff"
alias gst="git status"
alias gcmsg="git commit -m"
alias gss="git status -s"
alias gds="git diff --staged"
alias gl="git log --pretty=oneline"
alias glg="git log --graph --pretty=format:'%h/%an - %s'"
alias gus="git restore --staged"
alias ..="cd .."
alias vim="nvim"
alias s="systemctl"
alias bs="sudo powertop --auto-tune"
alias balanced="sudo smbios-thermal-ctl --set-thermal-mode=balanced"
alias cool="sudo smbios-thermal-ctl --set-thermal-mode=cool-bottom"
alias quiet="sudo smbios-thermal-ctl --set-thermal-mode=quiet"
alias performance="sudo smbios-thermal-ctl --set-thermal-mode=performance"
alias t="todo.sh"
alias ta="todo.sh add"
alias tl="todo.sh list"
alias td="todo.sh do"
alias gdog="git log --all --decorate --oneline --graph"
alias gb="git branch"
alias red="sudo sh -c 'rmmod psmouse; modprobe psmouse proto=imps'"
alias tap="xinput --set-prop 'Synaptics TM3203-003' 'libinput Tapping Enabled' 1"
alias grl="grep --recursive --line-number --binary-files=without-match --exclude-dir=node_modules --exclude-dir=.git"
alias cf="xclip -sel clip"

# Load
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

# completion
bindkey '^[[Z' reverse-menu-complete

# prompt
autoload -U colors && colors
PS1="%F{green}%n%f@%F{magenta}%m%f:%F{blue}%~ %f[%F{yellow}%?%f]> "

# Syntax highlighting
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
