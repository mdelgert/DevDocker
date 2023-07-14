#!/bin/sh

# Add if statement to support docker and compsoe file.
if [ $# -eq 2 ]; then
  USERNAME=$1
  PASSWORD=$2
else
  echo "No arguments."
fi

# Add the user and set the password
adduser -D -H -s /sbin/nologin $USERNAME
echo -e "$PASSWORD\n$PASSWORD" | smbpasswd -a -s $USERNAME

# Start the Samba server
/usr/sbin/smbd --foreground

