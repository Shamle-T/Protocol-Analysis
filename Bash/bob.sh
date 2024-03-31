#!/bin/bash

read -p "Enter the responses: " response

last_letter=${response: -1}
echo $last_letter

if [[ -z "$response" || "$response" == "" ]]; then
       echo "Fine be that way"
elif [[ "$response" == "${response^^}" ]]; then
	if [[ "$last_letter" == "?" ]]; then
		echo "Calm down, I know what I'm doing"
	else
		echo "Whoa, Chill out!"
	fi
elif [[ "$last_letter" == "?" ]]; then
	echo "Sure"
else
	echo "Whatever"	
fi
