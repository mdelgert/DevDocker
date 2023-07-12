#!/bin/sh

# Set default values if parameters are not provided
#USERNAME=${1:-"default_user"}
#PASSWORD=${2:-"default_password"}

# Add the user and set the password
adduser -D -H -s /sbin/nologin $USERNAME
echo -e "$PASSWORD\n$PASSWORD" | smbpasswd -a -s $USERNAME

# Start the Samba server
/usr/sbin/smbd --foreground

