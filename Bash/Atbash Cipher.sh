#!/bin/bash

#Splitting the sentence
sentence_split(){
	declare -g sentence_container=()
	IFS=' '
	read -ra sentence_container <<< "$1"
	echo "Splitted Array ->  ${sentence_container[@]}"
}

#Normal alphabet
get_alphabet(){
	declare -g alphabet_array=()
	for (( i=0; i<${#1}; i++ )); do
		alphabet_array+=("${1:i:1}")
	done
	echo "Alphabet array ->    ${alphabet_array[@]}"
}

#Reverse alphabet
get_reverse_alphabet(){
	declare -g reverse_alphabet=()
	for ((x=${#alphabet_array[@]}-1; x>=0; x--)); do
		reverse_alphabet+=(${alphabet_array[x]})
	done
	echo "Reversed alphabet -> ${reverse_alphabet[@]}"

}

#Reversing each word
reverse_each_word(){
	reversed_word=""
	for ((x=0; x<${#sentence_container[@]}; x++)); do
		local word_to_decipher=${sentence_container[x]}
		#echo "Word to encode : $word_to_decipher"
		temp_word_count_store=""
		for ((y=0; y<${#word_to_decipher};y++)); do 
			local letter_to_decipher=${word_to_decipher:y:1}
			#echo "Letter to encode : $letter_to_decipher"
			if [[ $letter_to_decipher =~ [[:alpha:]] ]]; then
				#echo "Character is alphabetic"
				for ((q=0; q<${#alphabet_array[@]}; q++)); do 
						
					if [[ "$letter_to_decipher" == "${alphabet_array[q]}" ]]; then
						reversed_word+=${reverse_alphabet[q]}
						temp_word_count_store+=${reverse_alphabet[q]}	
					fi
				done
			else
				reversed_word+="$letter_to_decipher"
			fi
			if [[ "${#temp_word_count_store}" == "${#word_to_decipher}" ]]; then
				#echo "Entered the space operator --"
				reversed_word+=" "
				#echo "Added space --"
			fi
		done
	done
	echo
	echo "Reversed word = $reversed_word"
}
echo
echo "-- Initiating Atbash Cipher --"
echo
#Getting the sentence from user
read -p "Enter the sentence to reverse: " sentence_input

sentence_split "$sentence_input"

get_alphabet "abcdefghijklmnopqrstuvwxyz"

get_reverse_alphabet

#Print the number of word
word_count=${#sentence_container[@]}
#echo "Word count: $word_count"

reverse_each_word $sentence_container
echo
echo "-- Atbash Cipher Successful --"
