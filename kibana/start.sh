docker run --name elasticsearch -d elasticsearch
docker run --name kibana --link elasticsearch:elasticsearch -d -p 8081:80 kibana

docker run --name elasticsearch -d -p 9200:9200 elasticsearch
docker run --name kibana -d -p 80:80 kibana