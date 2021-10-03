# Default programs
export EDITOR="nvim"
export PAGER="less"
export BROWSER="firefox"

# Proxy
export http_proxy="http://127.0.0.1:7890"
export https_proxy="http://127.0.0.1:7890"
export ftp_proxy="http://127.0.0.1:7890"
export no_proxy="localhost, 127.0.0.1"
export HTTP_PROXY="http://127.0.0.1:7890"
export HTTPS_PROXY="http://127.0.0.1:7890"
export FTP_PROXY="http://127.0.0.1:7890"
export NO_PROXY="localhost, 127.0.0.1"

# PATH
export PATH="${HOME}/.local/bin:${HOME}/.emacs.d/bin:${PATH}"

# DIRS & RCS
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XINITRC="${XDG_CONFIG_HOME:-$HOME/.config}/x11/.xinitrc"
export ZDOTDIR="${XDG_CONFG_HOME:-$HOME/.config}/zsh"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export WGETRC="${XDG_CONFG_HOME:-$HOME/.config}/wget/.wgetrc"
export DOOMDIR="${XDG_CONFIG_HOME:-$HOME/.config}/doom.d"
export RCLONE_CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}/rclone"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/pass"
export GNUPGHOME="${XDG_CONFIG_HOME:-$HOME/.config}/gnupg"

# Custom
export MUSIC_MOBILE_PATH="/storage/self/primary/Music/"
export MUSIC_LIBRARY_PATH="/media/suh/musics/"

# Input method
export GTK_IM_MODULE=fcitx5
export QT_IM_MODULE=fcitx5
export XMODIFIERS="@im=fcitx5"
