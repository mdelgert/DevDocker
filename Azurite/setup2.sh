docker stop azureite-emulator
docker rm azureite-emulator
docker run \
    -p 10000:10000 \
    -p 10001:10001 \
    -p 10002:10002 \
    --name azureite-emulator \
    --detach \
    --restart=unless-stopped \
    -v azuritedata:/data mcr.microsoft.com/azure-storage/azurite