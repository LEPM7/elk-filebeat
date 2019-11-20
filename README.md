# ELK + Filebeat Sling Container

## Requirements

The container has been tested using the following settings in Docker:

* 4 CPUS
* 8GB RAM
* 2GB SWAP

## Usage

### Start the container image

    docker-compose up -d
Logstash, Elasticsearch, Filebeat and Kibana should be up an Running, Kibana should be available in port 5601.
To process a file it must be dropped inside logs/ folder in this directory, to be parsed files must have .log extension.

### Remove the container

    docker-composer down

### Access the container

    docker exec -it elk_local bash

## Basic Troubleshooting

### To make sure all services are running within the container run (inside the conatiner)

    service --status-all
  Filebeat, Logstash, Kibana and Elasticsearch should be running.

#### Test Filebeat output (Check if it's connecting with Logstash)

    # filebeat test output

#### Restart Filebeat

    # service filebeat restart

#### Restart Logstash

    # service logstash restart

#### Restart Elasticsearch

    # service elasticsearch restart

#### Restart Kibana

    # service kibana restart
In order to reprocess all files a file named deleteFileCache.sh is included, this file will restart Filebeat and delete all Filebeat's metadata, running this script will force all documents to be reprocessed.