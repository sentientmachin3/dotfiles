export MOZ_WAYLAND_ENABLED=1

if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
  exec sway
fi
