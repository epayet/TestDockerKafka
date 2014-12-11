FROM debian:jessie

RUN apt-get update
RUN apt-get install -y default-jre
RUN apt-get install -y wget software-properties-common
RUN wget -qO - https://packages.elasticsearch.org/GPG-KEY-elasticsearch | apt-key add -
RUN add-apt-repository "deb http://packages.elasticsearch.org/elasticsearch/1.4/debian stable main"
RUN apt-get update && apt-get install -y elasticsearch
RUN touch /var/log/elasticsearch.log
RUN echo "http.cors.enabled: true" >> /etc/elasticsearch/elasticsearch.yml
#RUN echo "http.cors.allow-origin: http://kibana" >> /etc/elasticsearch/elasticsearch.yml

EXPOSE 9200
EXPOSE 9300

CMD /etc/init.d/elasticsearch start && tail -F /var/log/elasticsearch.log