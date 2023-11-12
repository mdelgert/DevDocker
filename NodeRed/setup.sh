#!/bin/sh
docker stop node-red
docker rm node-red
sudo rm -rf /portainer/Files/AppData/Config/node-red
sudo mkdir /portainer/Files/AppData/Config/node-red
sudo chmod 777 /portainer/Files/AppData/Config/node-red
docker run -d -it -p 84:1880 -v /portainer/Files/AppData/Config/node-red:/data --name node-red --restart=always nodered/node-red