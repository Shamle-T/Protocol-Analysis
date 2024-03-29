#!/bin/bash


s=GAGCCTACTAACGGGAT
t=CATCGTAATGACGGCCT

if [ ${#s} == ${#t} ]; then
	echo "Data sets are of equal length, proceeding"
	echo ${#s}
else
	echo "Data sets are of variable length"
	exit 1
fi

hamming_distance=0

for (( i=0; i<${#s}; i++ )); do 
	if [ "${s:$i:1}" != "${t:$i:1}" ];then
		(( hamming_distance++ ))
	fi
done

echo "Hamming Distance:" $hamming_distance

