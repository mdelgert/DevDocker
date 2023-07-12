#!/bin/bash

# Set root password
echo "root:${ROOT_PASSWORD}" | chpasswd

# Allow root login via SSH
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Start SSH server
/usr/sbin/sshd -D

