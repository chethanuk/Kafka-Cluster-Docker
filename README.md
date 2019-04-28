# Confluent-Kafka Cluster Docker Compose

Help you quickly get up and running using Confluent Kafka using Docker containers.

# Edit config

If you want to read data from outside the docker, then change the following:
`nano etc/kafka/server.properties`

Set advertised.listeners=PLAINTEXT://PUBLIC:9092

# RUN

```
docker-compose up -d
```

### To test just Kafka with zookeeper:
`docker-compose -f compose.yml up -d -build`
