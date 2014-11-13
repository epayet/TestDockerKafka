FROM debian:jessie
MAINTAINER epayet <jakspinning@gmail.com>

ADD http://ftp.nluug.nl/internet/apache/kafka/0.8.1.1/kafka_2.9.2-0.8.1.1.tgz /kafka.tgz

RUN apt-get update && apt-get -y install default-jre
RUN mkdir /kafka
RUN tar -xzf /kafka.tgz -C /kafka
RUN cp -R /kafka/kafka_*/* /kafka
RUN rm -R /kafka/kafka_*