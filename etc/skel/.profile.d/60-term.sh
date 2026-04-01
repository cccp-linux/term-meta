#!/bin/sh

# export output_scale=1
# export output_scale_eDP_1=2

if [ -z "$DISPLAY" -a -z "$TMUX" -a -z "$WAYLAND_DISPLAY" ]; then
    case "$XDG_VTNR" in [1-4]) exec term -e tmux;; esac
fi
