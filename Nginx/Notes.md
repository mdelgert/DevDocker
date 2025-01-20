Here’s a **safest approach** YAML configuration for running Nginx Proxy Manager securely, avoiding root privileges while ensuring functionality.

This setup:
1. Runs the container as a non-root user (`PUID` and `PGID`).
2. Uses `cap_add: NET_BIND_SERVICE` to allow binding to privileged ports (`80` and `443`) without root.
3. Employs `bridge` networking with port mappings (`8080` and `8443`) instead of `host` networking for isolation.

---

### **Safest `docker-compose.yml`**
```yaml
version: "3.8"

services:
  nginx-proxy-manager:
    image: jc21/nginx-proxy-manager:latest
    container_name: nginx-proxy-manager
    ports:
      - "8080:80"   # Map HTTP to port 8080
      - "8443:443"  # Map HTTPS to port 8443
      - "81:81"     # Admin interface
    environment:
      PUID: 1000          # Non-root user
      PGID: 1000          # Non-root group
      TZ: America/New_York # Set your timezone
    volumes:
      - /portainer/Files/AppData/Config/nginx-proxy-manager/data:/data
      - /portainer/Files/AppData/Config/nginx-proxy-manager/letsencrypt:/etc/letsencrypt
    restart: unless-stopped
    cap_add:
      - NET_BIND_SERVICE  # Allow binding to privileged ports
    security_opt:
      - no-new-privileges:true # Disable privilege escalation

networks:
  default:
    driver: bridge
```

---

### **Key Security Features**
1. **Non-Root User:**
   - The `PUID` and `PGID` values correspond to a non-root user on your host system. Replace `1000` with your actual user/group IDs using `id`:
     ```bash
     id
     ```
     Example output:
     ```
     uid=1000(mdelgert) gid=1000(mdelgert)
     ```

2. **`cap_add: NET_BIND_SERVICE`:**
   - Grants permission to bind to privileged ports (`80` and `443`) without running the container as root.

3. **`security_opt: no-new-privileges`:**
   - Prevents processes inside the container from gaining additional privileges, even if exploited.

4. **Port Mapping:**
   - Maps internal ports `80` and `443` to `8080` and `8443` externally. This avoids using `host` networking for better isolation.

5. **Bridge Networking:**
   - The default `bridge` network ensures container traffic is isolated from the host system.

---

### **Accessing the Application**
- **Admin Interface:**  
  Visit `http://<RaspberryPi-IP>:81`.

- **Proxy Hosts:**  
  Configure your router to forward traffic:
  - HTTP (`80`) -> Raspberry Pi `8080`.
  - HTTPS (`443`) -> Raspberry Pi `8443`.

---

### **Why This is Safe**
1. The container runs as a non-root user with limited privileges.
2. The `NET_BIND_SERVICE` capability ensures functionality without root access.
3. Using bridge networking provides network isolation between the container and host.
4. Port mappings ensure flexibility while avoiding the risks of host networking.

---
