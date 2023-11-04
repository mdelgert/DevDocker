#!/bin/sh

docker stop mqtt
docker rm mqtt
sudo rm -rf /portainer/Files/AppData/Config/mqtt
sudo mkdir /portainer/Files/AppData/Config/mqtt
sudo chmod 777 /portainer/Files/AppData/Config/mqtt

docker run -it -d --name mqtt -p 1883:1883 \
-v /portainer/Files/AppData/Config/mqtt:/mosquitto/config \
-v /portainer/Files/AppData/Config/mqtt:/mosquitto/data \
-v /portainer/Files/AppData/Config/mqtt:/mosquitto/log \
 eclipse-mosquitto:2

 #docker run -it --name mosquitto -p 1883:1883 eclipse-mosquitto 
