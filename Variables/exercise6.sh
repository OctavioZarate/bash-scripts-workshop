#!/bin/bash

#Without quotes

echo "Output \$* without quotes:"
echo $*

echo ""
echo "Output \$@ without quotes:"
echo $@

#With quotes
echo ""
echo "Output of \"\$*\" with quotes:"
echo "$*"

echo ""
echo "Output of \"\$@\" with quotes"
echo "$1"
echo "$2"
echo "$3"
echo "$4"
echo "$5"

#Comments
echo "\$* puts all arguments into a single string when quoted."
echo "\$@ keeps them separate, even when quoted."
