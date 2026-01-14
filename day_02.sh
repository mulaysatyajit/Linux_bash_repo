#!/bin/bash 

# This script is about variables . 

#name="Satyajit"

#echo "The name is $name and it will vary with user who logins, and $name has login on this date $(date)"

# This is the 1st method to take input from the user . 
echo "Enter your name"

read username

# This is the 2nd method to take input from the user . 

echo "Your lovely name is $username"

read -p "Enter your name: " username

echo "You have lovely name: $username"
