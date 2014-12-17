#!/bin/sh
 
if [ $# -ne 1 ]
then
    echo "use: ec <file>"
    exit -1
fi
 
/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -n $1 > /dev/null 2>&1
 
if [ $? -eq 1 ]
then
    /Applications/Emacs.app/Contents/MacOS/Emacs &
    while [ 1 ]
    do
        /Applications/Emacs.app/Contents/MacOS/bin/emacsclient -n $1 > /dev/null 2>&1
 
        if [ $? -eq 0 ]
        then
            exit 0
        else
            sleep 1
        fi
    done
fi
