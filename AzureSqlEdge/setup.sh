docker stop sqledge
docker rm sqledge
sudo rm -rf /mnt/d1/portainer/Files/AppData/Config/sqledge
sudo mkdir /mnt/d1/portainer/Files/AppData/Config/sqledge
sudo chmod 777 /mnt/d1/portainer/Files/AppData/Config/sqledge
#docker run --cap-add SYS_PTRACE -e 'ACCEPT_EULA=1' -e \
#'MSSQL_SA_PASSWORD=Password2023!' -p 1433:1433 --name sqledge \
#-v /mnt/d1/portainer/Files/AppData/Config/sqledge:/var/opt \
#-d mcr.microsoft.com/azure-sql-edge