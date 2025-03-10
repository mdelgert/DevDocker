docker stop cosmos-emulator
docker rm cosmos-emulator
docker run \
    --publish 8081:8081 \
    --publish 10250-10255:10250-10255 \
    --name cosmos-emulator \
    --interactive \
    --env AZURE_COSMOS_EMULATOR_ENABLE_DATA_PERSISTENCE=true \
    --env AZURE_COSMOS_EMULATOR_PARTITION_COUNT=3 \
    --detach \
    --restart=always \
    -v cosmosdbdata:/tmp/cosmos/appdata \
    mcr.microsoft.com/cosmosdb/linux/azure-cosmos-emulator:latest