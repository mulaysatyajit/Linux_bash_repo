#!/bin/bash

create_folder(){
	
	mkdir demo

}

if ! create_folder ; then
	echo "Code is exited"
	exit 1
fi

echo "This code should not be executed! "

