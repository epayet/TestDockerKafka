#!/bin/sh

#Run without local port mapping
docker run --name zookeeper -d zookeeper
docker run --name kafka1 --link zookeeper:zookeeper -d kafka_server

#Run with local port mapping
#docker run --name zookeeper -d -p 2181:2181 zookeeper
#docker run --name kafka1 --link zookeeper:zookeeper -p 9092:9092 -d kafka_server

#Run simple docker client in a container
docker run --rm -it --link zookeeper:zookeeper --link kafka1:kafka1 kafka /bin/bash