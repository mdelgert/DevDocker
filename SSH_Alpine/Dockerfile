# Use the Alpine Linux base image
FROM alpine:3.18

LABEL maintainer="Matthew Elgert"
RUN apk add --update --no-cache openssh 
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
EXPOSE 22

# Define an entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

# Links 
# https://www.cyberciti.biz/faq/how-to-install-openssh-server-on-alpine-linux-including-docker/
# https://dev.to/yakovlev_alexey/running-ssh-in-an-alpine-docker-container-3lop

# docker build -t alpine-sshd .
# docker run -d -p 2022:22 -e USERNAME=mdelgert -e PASSWORD=password alpine-sshd
# ssh ssh mdelgert@pi1 -p 2022
