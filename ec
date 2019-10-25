#!/bin/sh

which osascript > /dev/null 2>&1 && osascript -e 'tell application "Emacs" to activate'
emacsclient -n "$@" > /dev/null 2>&1
