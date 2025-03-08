docker cosmos-emulator
docker run \
    --publish 8081:8081 \
    --publish 10250-10255:10250-10255 \
    --name cosmos-emulator \
    --detach \
    --restart=always \
    mcr.microsoft.com/cosmosdb/linux/azure-cosmos-emulator:latest