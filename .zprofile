#!/bin/zsh
#config 03/26
# profile file. Runs on login. Environmental variables are set here. The following line is used if you need status bar scrips.
#export PATH="$PATH:$(find ~/.local/bin -type d | paste -sd ':' -)"
# Default programs:
export EDITOR="/usr/bin/nvim"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export XINITRC="$XDG_CONFIG_HOME/xinitrc"
export GRIM_DEFAULT_DIR="$HOME/ss"
#This disabels the Mic LED in my laptop
sudo bash -c "echo 0 > /sys/class/leds/platform::micmute/brightness"
if [ -z "${WAYLAND_DISPLAY}" ] && [ "${XDG_VTNR:-0}" -eq 1 ]; then
  exec start-hyprland 1> /dev/null
fi
