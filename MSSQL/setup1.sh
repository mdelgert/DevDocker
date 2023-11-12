#!/bin/sh
docker stop sqledge
docker rm sqledge
sudo rm -rf /portainer/Files/AppData/Config/sqledge
sudo mkdir /portainer/Files/AppData/Config/sqledge
sudo mkdir /portainer/Files/AppData/Config/sqledge/data
sudo mkdir /portainer/Files/AppData/Config/sqledge/log
sudo mkdir /portainer/Files/AppData/Config/sqledge/backup
#sudo chmod 777 /portainer/Files/AppData/Config/sqledge
#sudo chmod 777 /portainer/Files/AppData/Config/sqledge/data
#sudo chmod 777 /portainer/Files/AppData/Config/sqledge/log
#sudo chmod 777 /portainer/Files/AppData/Config/sqledge/backup
sudo find /portainer/Files/AppData/Config/sqledge -type d -exec chmod 777 {} \;
docker run --cap-add SYS_PTRACE -e 'ACCEPT_EULA=1' -e \
'MSSQL_SA_PASSWORD=Password2023!' -p 1433:1433 --name sqledge --restart=always \
-v /portainer/Files/AppData/Config/sqledge/data:/var/opt/mssql/data \
-v /portainer/Files/AppData/Config/sqledge/log:/var/opt/mssql/log \
-v /portainer/Files/AppData/Config/sqledge/backup:/var/opt/mssql/backup \
-v /portainer/Files/AppData/Config/sqledge:/var/opt/mssql-extensibility \
-v /portainer/Files/AppData/Config/sqledge:/var/opt/mssql-extensibility/data \
-v /portainer/Files/AppData/Config/sqledge:/var/opt/mssql-extensibility/log \
-d mcr.microsoft.com/azure-sql-edge:1.0.7

#docker run --cap-add SYS_PTRACE -e 'ACCEPT_EULA=1' -e \
#'MSSQL_SA_PASSWORD=Password2023!' -p 1433:1433 --name sqledge \
#-v /portainer/Files/AppData/Config/sqledge:/var/opt \
#-d mcr.microsoft.com/azure-sql-edge