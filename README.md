#### Clone this repository and move into the directory
```bash
git clone https://github.com/yevadrian/honeytrap-kafka-mongodb-metabase && cd honeytrap-kafka-mongodb-metabase
```

#### Run the script to setup requirements
```bash
bash setup.sh
```

#### Deploy honeytrap and required apps with Docker Compose
```bash
docker compose up -d
```

#### Configure source and sink connectors for Kafka Connect
```bash
bash connectors.sh
```

#### Open MongoDB with credentials below
```txt
uri = mongodb://mongodb:mongodb@localhost:27017/
username = mongodb
password = mongodb
```

#### Open Metabase with credentials below
```txt
url = http://localhost:3000
email = metabase@metabase.com
password = metabase777
```
