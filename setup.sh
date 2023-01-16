# Update repository and upgrade packages
apt update -y && apt upgrade -y

# Move original SSH port
sed -i "s/#Port 22/Port 20000/g" /etc/ssh/sshd_config
sed -i "s/#ClientAliveInterval 0/ClientAliveInterval 3600/g" /etc/ssh/sshd_config
sed -i "s/#ClientAliveCountMax 3/ClientAliveCountMax 3/g" /etc/ssh/sshd_config
service ssh restart

# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
bash get-docker.sh
systemctl enable docker.service && systemctl enable containerd.service

# Install Additional Tools
apt install nmap -y
apt install jq -y

# Install honeytrap and tools
docker compose up -d