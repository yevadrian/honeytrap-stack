#### Clone this repository and move into the directory
```bash
git clone https://github.com/yevadrian/honeytrap-kafka-mongodb-metabase && cd honeytrap-kafka-mongodb-metabase
```

#### Run the script to setup requirements
```bash
sudo bash setup.sh
```

#### Deploy honeytrap and required apps with Docker Compose
```bash
sudo docker compose up -d
```

#### Configure source and sink connectors for Kafka Connect
```bash
sudo bash connectors.sh
```

#### Open MongoDB with credentials below
```txt
uri = mongodb://mongodb:mongodb@YOUR_IP_ADDRESS:27017/
```

#### Open Metabase with credentials below
```txt
url = http://YOUR_IP_ADDRESS:3000/
email = metabase@metabase.com
password = metabase777
```