# Use a base image
FROM ubuntu:22.04

# Install SSH server
RUN apt-get update && apt-get install -y sudo openssh-server

# Copy entrypoint script
COPY entrypoint.sh /

# Allow execution of entrypoint script
RUN chmod +x /entrypoint.sh

# Create privilege separation directory
RUN mkdir /run/sshd

# Start SSH server
CMD ["/entrypoint.sh"]

# docker build -t ubuntu-sshd . 
# docker run -d -p 2022:22 -e USERNAME=mdelgert -e PASSWORD=password ubuntu-sshd
# ssh mdelgert@localhost -p 2022
