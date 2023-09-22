https://docs.ntfy.sh/config/
https://docs.ntfy.sh/config/#access-control

### Example: Private instance¶
```bash
ntfy user add --role=admin test
password: password
confirm: password
```

### Creating an access token
```bash
ntfy token add --expires=1d --label="example" test
ntfy token list
```

### Example deploy
```bash
docker build -t ntfy .
docker run --name ntfy -d -p 87:80 \
-v /mnt/d1/portainer/Files/AppData/Config/ntfy/cache:/var/cache/ntfy \
-v /mnt/d1/portainer/Files/AppData/Config/ntfy/etc:/etc/ntfy \
ntfy
```

