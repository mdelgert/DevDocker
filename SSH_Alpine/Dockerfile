# Use the Alpine Linux base image
FROM alpine:3.18

LABEL maintainer="Matthew Elgert"

ARG USERNAME
ENV USERNAME=$USERNAME

ARG PASSWORD
ENV PASSWORD=$PASSWORD

RUN apk add --update --no-cache openssh 
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config

#RUN adduser -h /home/mdelgert -s /bin/sh -D mdelgert
RUN adduser --disabled-password --gecos '' -h /home/$USERNAME -s /bin/sh -D $USERNAME && \
    echo 'user ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN chmod u+s /bin/su

RUN echo -n "$USERNAME:$PASSWORD" | chpasswd

RUN echo -n "root:$PASSWORD" | chpasswd

ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 22
COPY entrypoint.sh /

# docker build -t alpine-sshd --build-arg USERNAME=mdelgert --build-arg PASSWORD=password .
# docker run -d -p 2022:22 -e USERNAME=mdelgert -e PASSWORD=password alpine-sshd

# Links 
# https://www.cyberciti.biz/faq/how-to-install-openssh-server-on-alpine-linux-including-docker/
# https://dev.to/yakovlev_alexey/running-ssh-in-an-alpine-docker-container-3lop
