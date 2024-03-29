#!/bin/bash

armstrong(){
	length=${#num}
	echo $length 
	counter=0
	result=0
	sum=0
	if [[ $num -gt 1 ]]; then
		while [[ $counter -lt $length ]]; do
			new_count=$(( $counter + 1 )) 
			armstrong_num=${num:$counter:1}
			result=$(( armstrong_num ** length ))
			echo " $armstrong_num ^ $length =  $result "
			sum=$(( sum+result ))
			((counter++))
		done

		if [[ $sum -eq $num ]]; then
		       echo "$num is an armstrong number"
		else
			echo "$num is not an armstrong number"
		fi	       
	else
		echo "$num is not an armstrong number"

	fi
}

read -p "Enter your number: " num
armstrong $num
