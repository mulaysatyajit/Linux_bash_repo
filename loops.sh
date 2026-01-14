#!/bin/bash

# This is about while and for loops

read -p "Enter your name: " name
for (( num=1 ; num<=10 ; num++))
do
	echo "Hello,$name"
done

