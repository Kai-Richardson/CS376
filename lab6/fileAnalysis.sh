#!/bin/bash
f=$1

if [ -f $f ]; then
    echo "File exists."
else
    echo "File does not exist."
fi

if [ -x $f ]; then
    echo "File is executable."
else
    echo "File is not executable."
fi

if [ -w $f ]; then
    echo "File writeable."
else
    echo "File is not writable."
fi