# Run upon login

# Linux
if [ $(uname) = "Linux" ]; then
    # Proxy should start regardless of X
    clash -f ${HOME}/.config/clash/config.yaml >/dev/null 2>&1 &
    # Start X server if on tty1
    [ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && exec startx "${XINITRC}"
fi
