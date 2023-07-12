#!/bin/sh
ssh-keygen -A

adduser --disabled-password --gecos '' -h /home/$USERNAME -s /bin/sh -D $USERNAME && \
    echo 'user ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

chmod u+s /bin/su

echo -n "$USERNAME:$PASSWORD" | chpasswd

echo -n "root:$PASSWORD" | chpasswd

exec /usr/sbin/sshd -D -e "$@"