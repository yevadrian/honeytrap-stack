# Install Additional Tools
apt install jq -y

# Put Source Connector to Kafka Connect
curl -sX PUT "http://localhost:8083/connectors/source-filepulse/config" \
-d @connectors/source-filepulse.json -H "Content-Type: application/json" | jq

# Put Sink Connector to Kafka Connect
curl -sX PUT "http://localhost:8083/connectors/sink-mongodb/config" \
-d @connectors/sink-mongodb.json -H "Content-Type: application/json" | jq
