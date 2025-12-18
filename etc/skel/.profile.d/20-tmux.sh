#!/bin/sh
[ $(tty) == /dev/tty2 ] && exec tmux
