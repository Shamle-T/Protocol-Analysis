#!/bin/bash

length(){
	points=0
	#echo "$1,$2"
	distance=$(( ($1*$1) + ($2*$2) ))
	#echo $distance
	if (( distance > 100 ));then
		points=0
	elif (( distance > 36 ));then
		points=1
	elif (( distance >4 ));then
		points=5
	else
		points=10
	fi
	echo "Points Achieved in length method: $points"
}

min=0
max=10
x_range=$(( (RANDOM % (25)) - 12 ))
y_range=$(( (RANDOM % (25)) - 12))
echo [$x_range,$y_range]

points=0

if [[ $x_range -lt 0 ]];then
	x_range=$(( x_range * -1 ))
fi

if [[ $y_range -lt 0 ]];then
	y_range=$(( y_range * -1 ))
fi

echo "Positive coordinates [$x_range,$y_range]"
length $x_range $y_range


