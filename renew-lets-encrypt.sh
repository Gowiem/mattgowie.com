#!/bin/bash

# Need to get off port 443 to renew cert. Wonder how I can do this without downtime...
cd /root/mattgowie.com/docker-compose stop

# Renew cert + move it over to where it needs to live for Docker to pick it up.
/root/certbot-auto renew
rm -rf /root/mattgowie.com/ssl/letsencrypt
cp -rv /etc/letsencrypt/ /root/mattgowie.com/ssl/

# Rebuild and startup docker again.
cd /root/mattgowie.com/
docker-compose up --build -d
