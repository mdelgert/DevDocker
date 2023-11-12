#!/bin/sh
#https://stackoverflow.com/questions/28320134/how-can-i-list-all-tags-for-a-docker-image-on-a-remote-registry
#https://www.googlinux.com/how-to-list-all-tags-of-a-docker-image/

wget -q -O - "https://hub.docker.com/v2/namespaces/library/repositories/debian/tags?page_size=10" | grep -o '"name": *"[^"]*' | grep -o '[^"]*$'

curl 'https://registry.hub.docker.com/v2/repositories/library/debian/tags/'|jq '."results"[]["name"]'
curl 'https://registry.hub.docker.com/v2/repositories/mdelgert/alpine-samba/tags/'|jq '."results"[]["name"]'
