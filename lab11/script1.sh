#/bin/bash
rm -rf ./new &> /dev/null
mkdir new

for file in ./orig/*; do
    if [ -f "$file" ]; then
        cp $file new/$(basename $file)
        echo "file found: $file"
    fi
done