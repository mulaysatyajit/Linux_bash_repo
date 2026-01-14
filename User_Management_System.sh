#!/bin/bash

# This is for the root user priviliges

if [[ $EUID -ne 0 ]]; then
    echo "Please run as root"
    exit 1
fi

# Passing username and groupname in the arguements .

u_name="$1"
grp_name="$2"

# Must give username

if [[ -z "$u_name" ]]; then
    echo "Username cannot be empty"
    exit 1
fi

# If user already exists then without exiting the code . Skip the creation of same user.

if id "$u_name" &>/dev/null; then
    echo "User '$u_name' already exists . Skipping the creation. "
else
    useradd "$u_name" && passwd "$u_name"
    echo "User added successfully"
fi



# Check if group exists

if getent group "$grp_name" > /dev/null ; then
    echo "Group already exists."
else
    echo "Group does not exist. Creating it now..."
    groupadd "$grp_name"
    
# Verify if the group was added
    if getent group "$grp_name" > /dev/null ; then
       echo "Group added successfully."
    else
        echo "Failed to add the group."
        exit 1
    fi
fi

# Adding user to a group 

echo "Everything is perfect . Adding $u_name to $grp_name: "
usermod -aG "$grp_name" "$u_name"

# Password Policies .
# User has to change password every 40 days and forces to change the password.

chage -M 40 "$u_name"
chage -d 0 "$u_name"




