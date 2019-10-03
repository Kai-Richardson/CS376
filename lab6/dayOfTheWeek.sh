#!/bin/bash

d=`date +%u`

if (( $1 )); then
    d=$1
fi

if [ $d == 1 ]; then
    echo "Monday."
elif [ $d == 2 ]; then
    echo "Tuesday."
elif [ $d == 3 ]; then
    echo "Wednes."
elif [ $d == 4 ]; then
    echo "Thur."
elif [ $d == 5 ]; then
    echo "Fri."
elif [ $d == 6 ]; then
    echo "Sat."
elif [ $d == 7 ]; then
    echo "Sun."
fi