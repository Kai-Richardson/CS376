#/bin/bash
rm -rf ./new &> /dev/null
mkdir new

for file in ./orig/*; do
    if [ -f "$file" ]; then

        if [ "${file##*.}" == "h" ]; then
            tr a-z A-Z < $file > new/$(basename $file)
        else
            cp $file new/$(basename $file)
        fi
    fi
done