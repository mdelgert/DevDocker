#!/bin/bash

# Check if script is being run as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

# Create the user
useradd -m -s /bin/bash $USERNAME

# Set password for the user
echo "$USERNAME:$PASSWORD" | chpasswd

# Add user to sudo group
usermod -aG sudo $USERNAME

# Start SSH server
/usr/sbin/sshd -D

