# https://hub.docker.com/repository/docker/mdelgert/alpine-samba/general

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
# docker build -t alpine-samba .
# docker run --name samba -d -p 139:139 -p 445:445 -v /mnt/d1:/shared alpine-samba mdelgert password
# docker run --name samba -d -p 139:139 -p 445:445 -v /mnt/d1:/d1 -v /mnt/d2:/d2 alpine-samba mdelgert password
# docker run --name samba -d -p 139:139 -p 445:445 -v /mnt/gfs:/gfs alpine-samba mdelgert password
