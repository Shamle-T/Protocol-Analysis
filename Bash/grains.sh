#!/bin/bash

#Counts both the squares as well as the total number of grains based on the squares input
grain_count(){
	totalgrains=0
	read -p "Do you want to begin ? Y|N ? " char 
	begin=${char,,}

	#Start while loop if the char is yes
	#character insensitive due to lower case usage
	while [[ "$begin" != "n" ]]; do 
		read -p "Enter square number: " square
		grains=$((2 ** ($square-1)))
		echo "The number of grains in $square : $grains grains"
		((totalgrains+=grains))
		read -p "Do you want to continue ? Y|N ? " char
		begin=${char,,}
	done
	
	#Checks if the user entry is "N"
	if [[ "$begin" == "n" || "$begin" == "N" ]]; then
		echo "Ending program..."			
	fi

	#when concluding the program, the total number of grains are visible
	echo "Total number of grains on the chess board $totalgrains"
}
grain_count
