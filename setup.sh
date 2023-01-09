#!/bin/bash

# Update repository and upgrade packages
apt update -y && apt upgrade -y

# Move original SSH port
sed -i "s/#Port 22/Port 20000/g" /etc/ssh/sshd_config
sed -i "s/#ClientAliveInterval 0/ClientAliveInterval 3600/g" /etc/ssh/sshd_config
sed -i "s/#ClientAliveCountMax 3/ClientAliveCountMax 3/g" /etc/ssh/sshd_config
service ssh restart

# Move original DNS port
sed -i "s/#DNS=/DNS=8.8.8.8/g" /etc/systemd/resolved.conf
sed -i "s/#DNSStubListener=yes/DNSStubListener=no/g" /etc/systemd/resolved.conf
ln -sf /run/systemd/resolve/resolv.conf /etc/resolv.conf
service systemd-resolved restart

# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
bash get-docker.sh
systemctl enable docker.service && systemctl enable containerd.service

# Install Nmap
apt install nmap -y

# Install JQ
apt install jq -y

# Install honeytrap and tools
docker compose up -d