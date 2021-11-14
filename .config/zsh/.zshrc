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
alias dual="xrandr --output DP-3 --left-of eDP-1"
alias balanced="sudo smbios-thermal-ctl --set-thermal-mode=balanced"
alias cool="sudo smbios-thermal-ctl --set-thermal-mode=cool-bottom"
alias quiet="sudo smbios-thermal-ctl --set-thermal-mode=quiet"
alias performance="sudo smbios-thermal-ctl --set-thermal-mode=performance"

# Load
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

autoload -U colors && colors
PS1="%F{green}%n%f@%F{magenta}%m%f:%F{blue}%~ %f[%F{yellow}%?%f]> "

# Syntax highlighting
if [ "$(uname)" = "Linux" ]; then
    source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
    source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
elif [ "$(uname)" = "Darwin" ]; then
    source "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
    source "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
    if type brew &>/dev/null; then
      FPATH="$(brew --prefix)/share/zsh/site-functions:$FPATH"
      autoload -Uz compinit
      compinit
    fi
fi
