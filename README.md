#### Clone this repository and move into the directory
```bash
https://github.com/yevadrian/honeytrap-kafka-docker && cd honeytrap-kafka-docker
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
username = mongodb
password = mongodb
uri = mongodb://mongodb:mongodb@localhost:27017/
```