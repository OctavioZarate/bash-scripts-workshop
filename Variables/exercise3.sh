#!/bin/bash

#Ask for a global variable

echo "Name of a global variable: (HOME, USER, SHELL, PWD, PATH)"
read g_variable

#Display value

echo "Value global variable: ${!g_variable}"

#Value last command

echo "Value last command: $?"

#Script arguments

echo "Script name: $0"
echo "Argument 1: $1"
echo "Argument 2: $2"
echo "All arguments: $@"

#Last command

echo "Value last command: $?"

#PID

echo "Shell PID: $$"
