#!/bin/sh

# export output_scale=1
# export output_scale_eDP_1=2

if [ -z "$DISPLAY" -a -z "$WAYLAND_DISPLAY" ]; then
    case $(tty) in /dev/tty[3-6]) exec term -e tmux;; esac
fi
