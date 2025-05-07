#!/bin/bash

CRACK="oriolorioloriol"

#A

#Removes the shortest match from the beginning of the variable's value.
echo "The result of ##*ori is" ${CRACK##*ori}

#Removes the longest match from the beginning of the variable's value.
echo "The result of #*ori is" ${CRACK#*ori}

#Removes the shortest match from the end of the variable's value.
echo "The result of %%ol* is" ${CRACK%%ol*}

#Removes the longest match from the end of the variable's value.
echo "The result of %ori* is" ${CRACK%ori*}


#B
#These techniques allow you to manipulate strings in a simple and efficient way directly in your Bash script.


