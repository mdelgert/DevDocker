#!/bin/sh

# Define variables
username="test"
password="password"
data_dir="/portainer/Files/AppData/Config/couchdb/data"
etc_dir="/portainer/Files/AppData/Config/couchdb/etc"

# Run the Docker command
docker run --name couchdb-for-ols -d --restart always \
    -e COUCHDB_USER=${username} \
    -e COUCHDB_PASSWORD=${password} \
    -v ${data_dir}:/opt/couchdb/data \
    -v ${etc_dir}:/opt/couchdb/etc/local.d \
    -p 5984:5984 couchdb

#https://github.com/vrtmrz/obsidian-livesync/blob/main/docs/setup_own_server.md#a-using-docker-container
