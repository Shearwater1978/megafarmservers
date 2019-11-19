# megafarmservers
Prepare steps:
- Consul
```bash
export VER="1.6.1"
wget https://releases.hashicorp.com/consul/${VER}/consul_${VER}_linux_amd64.zip
unzip consul_${VER}_linux_amd64.zip
tar -cvf consul.tar consul
mkdir -p roles/consul_server_upload/files/
mv consul.tar roles/consul_server_upload/files/
rm -rf consul && rm -rf consul_1.6.1_linux_amd64.zip
```

- download Prometheus rpm
```bash
export VER="2.14.0"
wget https://github.com/prometheus/prometheus/releases/download/${VER}/prometheus-${VER}.linux-amd64.tar.gz -O roles/prometheus_upload/files/prometheus.tar.gz
```

- download Grafana rpm
```bash
export VER="6.4.4"
wget https://dl.grafana.com/oss/release/grafana-6.4.4-1.x86_64.rpm -O roles/grafana_rpm_upload/files/grafana-6.4.4-1.x86_64.rpm
```

- download Elastic 7.3.2 rpm
```bash 
# ./get_elastic_rpm.sh
```
or 
```bash
export ELASTIC_VER="7.3.2"
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-${ELASTIC_VER}-x86_64.rpm -O ./roles/elastic_install/files/elasticsearch.rpm
```

Install consul:
```bash
ansible-playbook -i megafarm.inventory consul_server_install.yml
```
