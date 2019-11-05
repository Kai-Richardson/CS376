#!/bin/bash

echo "Running ex. 2.1"

sed 's/ /_/g' email.txt > emailUnderscores.txt

sed 's/^/    /g' email.txt > emailIndents.txt

sed -r 's/!+/./g' excl.txt > exclWithPeriods.txt



sed -r 's/public\s/private /g' Questions.java > Questions2.java