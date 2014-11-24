#Docker / Kafka

This repository uses [Docker](https://www.docker.com/) to use [Apache Kafka](http://kafka.apache.org/) in simple
containers.

There are 3 images :

* `kafka`: Contains the java environment and the kafka bins. This is the base image
* `zookeeper`: Built from the kafka image, run the zookeeper server
* `server`: Build from the kafka image, run a kafka server linked to zookeeper

To build these images :

    docker build -t kafka ./kafka
    docker build -t kafka_server ./server
    docker build -t zookeeper ./zookeeper

See the script.sh to see an example to run the 3 images.