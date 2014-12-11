FROM nginx

RUN apt-get update && apt-get install -y wget
RUN wget http://download.elasticsearch.org/kibana/kibana/kibana-3.1.2.tar.gz
RUN tar xzf kibana-3.1.2.tar.gz
RUN cp -R kibana-3.1.2/* /usr/share/nginx/html
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80

CMD nginx