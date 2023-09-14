# Update repository and upgrade packages
apt update -y && apt upgrade -y

# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
bash get-docker.sh
systemctl enable docker.service && systemctl enable containerd.service

# Move original SSH port
sed -i "s/#Port 22/Port 20000/g" /etc/ssh/sshd_config
sed -i "s/#ClientAliveInterval 0/ClientAliveInterval 3600/g" /etc/ssh/sshd_config
sed -i "s/#ClientAliveCountMax 3/ClientAliveCountMax 3/g" /etc/ssh/sshd_config
service ssh restart
