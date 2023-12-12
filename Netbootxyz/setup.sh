#!/bin/sh
docker stop netbootxyz
docker rm netbootxyz
sudo rm -rf /portainer/Files/AppData/Config/netbootxyz
sudo mkdir /portainer/Files/AppData/Config/netbootxyz
sudo mkdir /portainer/Files/AppData/Config/netbootxyz/config
sudo mkdir /portainer/Files/AppData/Config/netbootxyz/assets 
sudo find /portainer/Files/AppData/Config/netbootxyz -type d -exec chmod 777 {} \;
docker run -d \
  --name=netbootxyz \
  -e MENU_VERSION=2.0.59             `# optional` \
  -p 3000:3000                       `# sets webapp port` \
  -p 69:69/udp                       `# sets tftp port` \
  -p 8080:80                         `# optional` \
  -v /portainer/Files/AppData/Config/netbootxyz/config:/config   `# optional` \
  -v /portainer/Files/AppData/Config/netbootxyz/assets:/assets   `# optional` \
  --restart unless-stopped \
  ghcr.io/netbootxyz/netbootxyz