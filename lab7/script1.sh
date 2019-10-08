#!/bin/bash
# words that contain “abd”
echo "***Exercise 1.0***"

egrep "abd" awords.txt > temp.data

wc –w temp.data


echo "***Exercise 1.1***"
egrep '+z.l+' awords.txt > temp.data

wc -w temp.data

echo "***Exercise 1.2***"
egrep 'tomy$' awords.txt > temp.data

wc -w temp.data

echo "***Exercise 1.3***"
egrep '[aeiou]{4}' awords.txt > temp.data

wc -w temp.data

echo "***Exercise 1.4***"
egrep '^.{20}$' awords.txt > temp.data

wc -w temp.data

echo ""
echo "-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-"
echo ""

echo "***Exercise 1.5***"
egrep '.*b.+zz.*' awords.txt > temp.data

wc -w temp.data

echo "***Exercise 1.6***"
egrep '^anti.+|^anthro.+' awords.txt > temp.data

wc -w temp.data


echo "***Exercise 1.7***"
egrep '^(.)(.)\2\1$' awords.txt > temp.data

wc -w temp.data

echo "***Exercise 1.8***"
egrep '^(.)(.).{1}\1\2$' awords.txt > temp.data
wc -w temp.data