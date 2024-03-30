#!/bin/bash

char_count(){
	local word="$1"
	length=${#word}
	echo $length
}

chars(){
	local word="$1"
	i=0
	word_list=()
	alphabet_count=0
	while [[ $i -lt $length ]]; do
		local found=false
		local character=${word:i:1}
		echo $character
		for element in "${word_list[@]}"; do
			if [[ $character == $element ]]; then
				found=true
			fi
		done
		if ! $found; then
			word_list+=("$character")
			((alphabet_count++))			
		fi	
		(( i++ ))
	done
	echo "${word_list[@]}"
	echo $alphabet_count

}
read -p "Enter a pangram: " sentence

trimmed_sentence="${sentence// /}"
char_count "$trimmed_sentence"
lowered_sentence=${trimmed_sentence,,}
chars "$lowered_sentence"
