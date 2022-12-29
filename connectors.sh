curl -sX PUT "http://localhost:8083/connectors/source-filepulse/config" \
-d @connectors/source-filepulse.json -H "Content-Type: application/json" | jq

curl -sX PUT "http://localhost:8083/connectors/sink-mongodb/config" \
-d @connectors/sink-mongodb.json -H "Content-Type: application/json" | jq

curl -sX GET "http://localhost:8083/connectors/source-filepulse/status" | jq

curl -sX GET "http://localhost:8083/connectors/sink-mongodb/status" | jq

curl -sX DELETE "http://localhost:8083/connectors/source-filepulse"

curl -sX DELETE "http://localhost:8083/connectors/sink-mongodb"