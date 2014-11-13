FROM kafka
MAINTAINER epayet <jakspinning@gmail.com>

ADD server.properties /kafka/config/server.properties

EXPOSE 9092

CMD /kafka/bin/kafka-server-start.sh /kafka/config/server.properties