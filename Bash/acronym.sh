#!/bin/bash

read -p "Please provide the acronym: " acronym

char=$(wc -w <<< "$acronym")
echo $char

words=()
acronym_store=""

while read -r -d " " word; do
	words+=("$word")
	acronym_store+="${word:0:1}"
	echo $word
done <<< "$acronym "	
echo "${words[@]}"

tr '[:lower:][:upper:]' '[:upper:][:lower:]' <<< $acronym_store
