#!/bin/bash

echo "Enter the name of the new user:"
read username

# check if the user already exists

if id "$username" >/dev/null 2>&1; then
  echo "User $username already exists."
  exit 1
fi

echo "Adding user $username to the system..."

# create the user account

useradd -m $username

# set the password for the new user

echo "Enter a password for the new user:"
passwd $username
echo "User $username has been added successfully."
