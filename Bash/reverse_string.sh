#!/bin/bash

to_reverse(){
	word=$1
	reverse=""
	for (( i=${#word} ; i>0 ; i-- )); do
		reverse+=${word:i-1:1}
		#echo $char
	done
	echo "Reveresed word: " $reverse
}

read -p "Enter the word to reverse: " char
to_reverse $char
