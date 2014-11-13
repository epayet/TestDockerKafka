#!/bin/sh

#docker run --name zookeeper -d zookeeper
docker run --name zookeeper -d -p 2181:2181 zookeeper
docker run --name kafka1 --link zookeeper:zookeeper -d -p 9092:9092 kafka_server
docker run --rm -it --link zookeeper:zookeeper --link kafka1:kafka1 kafka /bin/bash