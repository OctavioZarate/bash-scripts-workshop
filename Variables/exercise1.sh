#!/bin/bash

# Display global environment variables (just a few common ones)
echo "Global Environment Variables:"
echo "USER=$USER"
echo "HOME=$HOME"
echo "SHELL=$SHELL"
echo "PATH=$PATH"
echo "PWD=$PWD"
echo "LANG=$LANG"
echo


# Display Shell arguments
echo "Shell Arguments:"
echo "\$0 (script name): $0"
echo "\$# (number of arguments): $#"
echo "\$@ (all arguments): $@"
echo


# Display last exit status
echo "Last command exit status: $LAST_EXIT_STATUS"


# Display PID of current Shell
echo "Current Shell PID: $$"

