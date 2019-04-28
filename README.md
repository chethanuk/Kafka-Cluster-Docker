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
or build the connect from Dockerfile
```
docker-compose -f docker-compose-build.yml up -d -build
```

### To test just Kafka with zookeeper:
`docker-compose -f compose.yml up -d -build`


### Requirements

1. Install Docker: https://docs.docker.com/install/linux/docker-ce/ubuntu/
    To verify run: `docker --version`
2. Install Docker-Compose: https://docs.docker.com/compose/install/ 
    To verify run: `docker-compose --version`