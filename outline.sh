#!/bin/bash

chmod +x gen_key.sh

apt install ca-certificates gnupg openssl

rm -rf /etc/nftables.conf

cp nftables1.conf /etc/
mv /etc/nftables1.conf /etc/nftables.conf

service nftables restart

echo "Starting OutlineVPN installation"

echo "Creating dedicated folder and creating config file"
mkdir -p outline/
cd outline/
echo "version: '3.3'

services:

  outline:
    image: morazow/outline-shadowsocks-server:1.3.5
    container_name: outline
    network_mode: host
    volumes:
      - \"./config.yml:/outline/config.yml:ro\"
    restart: unless-stopped
" > docker-compose.yml

echo "Creating users with passwords"

echo "keys:

  - id: user1
    port: 21
    cipher: chacha20-ietf-poly1305
    secret: password1!
" >> config.yml

echo "Starting OutlineVPN"
docker-compose up -d
docker ps -a


