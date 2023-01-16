# Put Source Connector to Kafka Connect
curl -sX PUT "http://localhost:8083/connectors/source-filepulse/config" \
-d @connectors/source-filepulse.json -H "Content-Type: application/json" | jq

# Put Sink Connector to Kafka Connect
curl -sX PUT "http://localhost:8083/connectors/sink-mongodb/config" \
-d @connectors/sink-mongodb.json -H "Content-Type: application/json" | jq

# Check Source Connector Status from Kafka Connect
# curl -sX GET "http://localhost:8083/connectors/source-filepulse/status" | jq

# Check Sink Connector Status from Kafka Connect
# curl -sX GET "http://localhost:8083/connectors/sink-mongodb/status" | jq

# Delete Source Connector Status from Kafka Connect
# curl -sX DELETE "http://localhost:8083/connectors/source-filepulse"

# Delete Source Connector Status from Kafka Connect
# curl -sX DELETE "http://localhost:8083/connectors/sink-mongodb"