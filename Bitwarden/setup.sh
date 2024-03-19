#!/bin/sh
docker stop bitwarden
docker rm bitwarden
sudo rm -rf /portainer/Files/AppData/Config/bitwarden
sudo mkdir /portainer/Files/AppData/Config/bitwarden
sudo chmod 777 /portainer/Files/AppData/Config/bitwarden/

#sudo mkdir /portainer/Files/AppData/Config/bitwarden/letsencrypt
#sudo cp /portainer/Files/AppData/Config/nginx-proxy-manager/letsencrypt/live/npm-3/fullchain.pem /portainer/Files/AppData/Config/bitwarden/letsencrypt/fullchain.pem
#sudo cp /portainer/Files/AppData/Config/nginx-proxy-manager/letsencrypt/live/npm-3/privkey.pem /portainer/Files/AppData/Config/bitwarden/letsencrypt/privkey.pem
#sudo chmod 644 /portainer/Files/AppData/Config/bitwarden/letsencrypt/fullchain.pem
#sudo chmod 644 /portainer/Files/AppData/Config/bitwarden/letsencrypt/privkey.pem

# docker run -d -it \
# -p 8443:8443 -p 8080:8080 \
# -v /portainer/Files/AppData/Config/bitwarden:/etc/bitwarden \
# --mount type=bind,source=/portainer/Files/AppData/Config/bitwarden/letsencrypt/fullchain.pem,target=/etc/bitwarden/fullchain.pem \
# --mount type=bind,source=/portainer/Files/AppData/Config/bitwarden/letsencrypt/privkey.pem,target=/etc/bitwarden/privkey.pem \
# --env-file settings.env --name bitwarden --restart=always bitwarden/self-host:beta

docker run -d -it \
-p 8443:8443 -p 8080:8080 \
-v /portainer/Files/AppData/Config/bitwarden:/etc/bitwarden \
--env-file settings.env --name bitwarden --restart=always bitwarden/self-host:beta
