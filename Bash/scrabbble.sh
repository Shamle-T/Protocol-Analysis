#!/bin/bash

letter_set_1=(A E I O U L N R S T)
letter_set_2=(D G)
letter_set_3=(B C M P)
letter_set_4=(F H V W Y)
letter_set_5=(K)
letter_set_6=(J X)
letter_set_7=(Q Z)
 
read -p "~ Enter your scrabble word ~ : " word
echo "Points will be allocated accordingly"
scrabble=${word^^}
point_calculation(){
	length=${#scrabble}
	echo 
	echo "length of the word:" $length
	points=0

	for (( i=0; i<$length; i++ )); do
		char="${scrabble:$i:1}"
		
		if [[ "${letter_set_1[@]}" =~ "$char" ]]; then
			((points++))	
		elif [[ "${letter_set_2[@]}" =~ "$char" ]]; then
			((points+=2))
		elif [[ "${letter_set_3[@]}" =~ "$char" ]]; then
			((points+=3))
		elif [[ "${letter_set_4[@]}" =~ "$char" ]]; then
			((points+=4))
		elif [[ "${letter_set_5[@]}" =~ "$char" ]]; then
			((points+=5))
		elif [[ "${letter_set_6[@]}" =~ "$char" ]]; then
			((points+=8))
		elif [[ "${letter_set_7[@]}" =~ "$char" ]]; then
			((points+=10))
		fi
	done
	echo "Points allocated to the word:" $points
	
}
point_calculation
