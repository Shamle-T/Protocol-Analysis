#!/bin/bash

give_away_cookie(){
    if [[ "$1" == "Alice" ]]; then
        echo "One for Alice, one for me."
    elif [[ "$1" == "Bohdan" ]]; then
        echo "One for Bohdan, one for me"
    elif [[ "$1" == "Zaphod" ]]; then
        echo "One for Zaphod, one for me"
    else
        echo "One for you, one for me."
    fi
}

read -p "Enter your friends name: " FRIENDNAME
give_away_cookie "$FRIENDNAME"
