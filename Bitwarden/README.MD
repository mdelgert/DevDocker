https://github.com/bitwarden/self-host/tree/main/docker-unified
https://hub.docker.com/u/bitwarden
https://hub.docker.com/r/bitwarden/self-host
https://bitwarden.com/learning/pm-install-and-deploy-bitwarden-self-hosted/
https://bitwarden.com/help/install-and-deploy-unified-beta/
https://stackoverflow.com/questions/42248198/how-to-mount-a-single-file-in-a-volume
https://github.com/island-automator/bitwarden-on-ha-tutorial

docker run -d --name bitwarden -v /$(pwd)/bwdata/:/etc/bitwarden -p 8080:8080  --env-file settings.env bitwarden/self-host:beta