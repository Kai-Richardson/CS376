if [ -f makefile ]; then
    echo "makefile exists"
fi

i=0
while (( $i < 10 )); do
    echo " value of i: $i"
    i=$(($i + 1))
done

myArray=(a b c 'd e')
for x in "${myArray[@]}"; do
    echo $x
done

for j in {0..10..2}; do
    echo "value of j: $j"
done

for ((k=0; k<5; k++)); do
    echo "value of k: $k"
done