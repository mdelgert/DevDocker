docker stop cosmos-emulator
docker rm cosmos-emulator
docker run \
    --publish 8081:8081 \
    --publish 10250-10255:10250-10255 \
    --name cosmos-emulator \
    --interactive \
    --detach \
    --env AZURE_COSMOS_EMULATOR_ENABLE_DATA_PERSISTENCE=true \
    --restart=always \
    mcr.microsoft.com/cosmosdb/linux/azure-cosmos-emulator:latest