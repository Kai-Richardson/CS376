#!/bin/bash

IFS="
"

myFiles=($(find . -maxdepth 1 -type f -print))

word="mango"

if (( $# > 0 )); then
    word=$1
fi

for file in ${myFiles[@]}; do

    if grep $word $file >/dev/null;then
        echo "$file has $word"
    else
        echo "$file does not have $word"
    fi
done