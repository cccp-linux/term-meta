#!/bin/sh

if [ -z "$DISPLAY" -a -z "$WAYLAND_DISPLAY" ]; then
    case $(tty) in /dev/tty[1-9]) exec tmux;; esac
fi
