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

echo "Input filename to check header:"
read userinput

outputfirst=$(egrep -v "^(\n|\s|//|/\*| \*)" new/$userinput | head -n 1)
outputlast=$(egrep -v "^(\n|\s|//|/\*| \*)" new/$userinput | tail -n 1)

if [[ $outputfirst != *"#IFNDEF"* ]] && [[ $outputlast != *"#ENDIF"* ]]; then
    echo "File $userinput needs a header (will be added) and a footer."
    newinput=${$userinput/./_}
    sed  -i "1i #IFNDEF $newinput" new/$userinput

elif [[ $outputfirst != *"#IFNDEF"* ]]; then
    echo "File $userinput needs header (will be added)."
    newinput=${$userinput/./_}
    sed  -i "1i #IFNDEF $newinput" new/$userinput

elif [[ $outputlast != *"#ENDIF"* ]]; then
    echo "File $userinput needs footer."
fi
