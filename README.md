###Usage
####Start the container image:
    $ docker-compose up -d
####Logstash, Elasticsearch, Filebeat and Kibana should be up an Running, Kibana should be available in port 5601
####To process a log file it must be dropped inside the log folder in this directory files must have .log extension.
####Access the container
    $ docker exec -it elk_local bash
