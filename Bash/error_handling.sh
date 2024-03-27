#!/bin/bash

errorhandling(){
	if [ "$#" -ne 1 ]; then
		echo "Error, incorrect number of arguments"
		exit 1
	else
		echo "Hello $1!, Welcome to the script"

	fi

}

errorhandling "$@"
