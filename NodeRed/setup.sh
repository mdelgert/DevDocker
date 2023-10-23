#!/bin/sh
docker stop node-red
docker rm node-red
sudo rm -rf /mnt/d1/portainer/Files/AppData/Config/node-red
sudo mkdir /mnt/d1/portainer/Files/AppData/Config/node-red
sudo chmod 777 /mnt/d1/portainer/Files/AppData/Config/node-red
docker run -d -it -p 85:1880 -v /mnt/d1/portainer/Files/AppData/Config/node-red:/data --name node-red nodered/node-red