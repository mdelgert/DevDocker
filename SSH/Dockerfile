# Use a base image
FROM ubuntu:22.04

# Install SSH server
RUN apt-get update && apt-get install -y openssh-server

# Copy entrypoint script
COPY entrypoint.sh /

# Allow execution of entrypoint script
RUN chmod +x /entrypoint.sh

# Set environment variable for root password
ENV ROOT_PASSWORD=password_placeholder

# Create privilege separation directory
RUN mkdir /run/sshd

# Start SSH server
CMD ["/entrypoint.sh"]

# docker build -t ubuntu-ssh .
# docker run -d -p 2222:22 --name ubuntu-ssh-container -e ROOT_PASSWORD=password1 ubuntu-ssh

# Using compose
# docker-compose up -d
# ssh root@localhost -p 2223
