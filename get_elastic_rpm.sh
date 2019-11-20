#/bin/bash

export ELASTIC_VER="7.3.2"
mkdir -p ./roles/elastic_install/files/
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-${ELASTIC_VER}-x86_64.rpm -O ./roles/elastic_install/files/elasticsearch.rpm
