#!/bin/bash
x=$1
y=$2

if (($x > $y)); then
    echo $x
elif (($y > $x)); then
    echo $y
else
    echo "They are equal."
fi
