[https://docs.ntfy.sh/config/]()

### Example: Private instance¶
```bash
$ ntfy user add --role=admin phil
password: mypass
confirm: mypass
user phil added with role admin 
```

### Example deploy
```bash
docker build -t ntfy .
docker run --name ntfy -d -p 87:80 \
-v /mnt/d1/portainer/Files/AppData/Config/ntfy/cache:/var/cache/ntfy \
-v /mnt/d1/portainer/Files/AppData/Config/ntfy/etc:/etc/ntfy \
ntfy
```

