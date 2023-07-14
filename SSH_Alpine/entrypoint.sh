#!/bin/sh

# Add if statement to support docker and compsoe file.
if [ $# -eq 2 ]; then
  USERNAME=$1
  PASSWORD=$2
else
  echo "No arguments."
fi

ssh-keygen -A

adduser --disabled-password --gecos '' -h /home/$USERNAME -s /bin/sh -D $USERNAME && \
    echo 'user ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

chmod u+s /bin/su

echo -n "$USERNAME:$PASSWORD" | chpasswd

echo -n "root:$PASSWORD" | chpasswd

exec /usr/sbin/sshd -D -e "$@"