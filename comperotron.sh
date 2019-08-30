#!/bin/bash
compare -metric PSNR -fuzz 10 $1 $2 -compose src diff.png 2> foo
echo
echo $1
echo $2
echo is $(cat foo)
if (( $(echo "$(cat foo) > 29" |bc -l 2> /dev/null) ))
then
	echo they are the same
	exit 0
else
	echo they differ
	exit 1
fi
