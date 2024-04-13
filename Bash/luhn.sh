#!/bin/bash

chk_total(){
	for x in ${char_of_nums[@]}; do
		((total+=x))
	done	
	echo $total
	if (($total%10 == 0)); then
		echo "-- Number is Divisible by 10 --"
		echo -e "\nValid"
	else
		echo -e "\nInvalid"
	fi
}


read -p "Enter the number: " num
num=$(echo $num | tr -d '[:space:]')
echo $num

length=${#num}
echo $length

char_of_nums=()
position=${num,0,-1}

#Define array
for (( element=0; element<$length; element++ )); do
	char_of_nums+=(${num:$element:1})
done
echo "Original digits: ${char_of_nums[@]}"

total=0
#Doubles digit for storing
for (( i=$length-2; i>=0 ; i-=2 )); do
	double_num=${num:i:1}
	double=$((double_num*2))
	if (( double > 9 )); then
		double=$(( double-9 ))
	fi
	char_of_nums[$i]=$double
	
	echo "$double_num - $double"
done	

echo "Final list - ${char_of_nums[@]}"

#sends List for Total, Divisibility and Valitity checking" 
chk_total
             
