#!/bin/sh
if [ -z "$DISPLAY" -a -z "$WAYLAND_DISPLAY" ]; then
    case $(tty) in /dev/tty[3-6]) exec term;; esac
fi
