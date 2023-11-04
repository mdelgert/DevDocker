docker stop sqledge
docker rm sqledge
sudo rm -rf /portainer/Files/AppData/Config/sqledge
sudo mkdir /portainer/Files/AppData/Config/sqledge
sudo chmod 777 /portainer/Files/AppData/Config/sqledge
#docker run --cap-add SYS_PTRACE -e 'ACCEPT_EULA=1' -e \
#'MSSQL_SA_PASSWORD=Password2023!' -p 1433:1433 --name sqledge \
#-v /portainer/Files/AppData/Config/sqledge:/var/opt \
#-d mcr.microsoft.com/azure-sql-edge