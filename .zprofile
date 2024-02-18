export MOZ_WAYLAND_ENABLED=1
export EDITOR=/usr/bin/nvim
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache

if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
  exec sway
fi
