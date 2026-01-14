read -p "Enter the username " username
echo "Confirm the username: $username"

sudo useradd -m $username

read -s -p "Enter the password for the user: " password


