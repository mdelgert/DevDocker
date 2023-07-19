# Use the Alpine Linux base image
FROM alpine:3.18
RUN apk add --update --no-cache openssh 
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
EXPOSE 22

# Define an entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]