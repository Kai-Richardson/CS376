#/bin/bash
rm -rf ./new &> /dev/null
mkdir new

for file in ./orig/*; do
    if [ -f "$file" ]; then
        plainname=$(basename $file)

        if [ "${file##*.}" == "h" ]; then
            tr a-z A-Z < $file > new/$plainname

        else
            cp $file new/$plainname
        fi
    fi
done

outputfirst=$(egrep -v "^(\r|\n|\s|//|/\*| \*)" new/test1.h | head -n 1)
outputlast=$(egrep -v "^(\r|\n|\s|//|/\*| \*)" new/test1.h | tail -n 1)
echo $outputfirst
echo $outputlast
