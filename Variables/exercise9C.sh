#!/bin/bash

CRACK="octavioctavioctavioctavio"

echo "The result of ##*octa is" ${CRACK##*octa}
echo "The result of #*octa is" ${CRACK#*octa}
echo "The result of %%vio* is" ${CRACK%%vio*}
echo "The result of %octa* is" ${CRACK%octa*}
