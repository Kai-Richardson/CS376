IFS="
"

myFiles=($(ls -a))
for file in "${myFiles[@]}"; do
    if [ -x "$file" ]; then
        echo "$file is executable."
    fi
done

echo '---------------------'

for file in "${myFiles[@]}"; do
    if [ ! -x "$file" ]; then
        echo "$file is not executable."
    fi
done