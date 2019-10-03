#!/bin/bash

n=0

if (( $1 )); then
    n=$1
fi

if (( n == 0 )); then
    echo "0"
elif (( n == 1 )); then
    echo "1"
else
    first=0
    second=1
    nth=1
    for (( i=0; i<n; i++ )); do
        nth=$((first + second))
        first=$second
        second=$nth
        echo $nth
    done

fi