#!/bin/sh

which osascript > /dev/null 2>&1 && osascript -e 'tell application "Emacs" to activate'
/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -n "$@" > /dev/null 2>&1
