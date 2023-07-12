FROM alpine:3.18

# Install Samba and other necessary tools
RUN apk update && apk add --no-cache samba

# Create a directory to be shared
RUN mkdir -p /shared
RUN chmod -R 777 /shared

# Copy the Samba configuration file
COPY smb.conf /etc/samba/smb.conf

# Expose the Samba ports
EXPOSE 139 445

# Define an entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

# Example deploy
# docker build -t samba-server .
# docker run -d -p 139:139 -p 445:445 -v /home/mdelgert/shared:/shared samba-server username password
# docker run -d -p 139:139 -p 445:445 -v /home/mdelgert/shared:/shared mdelgert/samba-server username password

