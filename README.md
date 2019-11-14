# megafarmservers
Prepare steps:
- Consul
```bash
export VER="1.6.1"
wget https://releases.hashicorp.com/consul/${VER}/consul_${VER}_linux_amd64.zip
unzip consul_${VER}_linux_amd64.zip
tar -cvf consul.tar consul
mv consul.tar roles/consul_install/files/
```


Install consul:
```bash
ansible-playbook -i megafarm.inventory consul_install.yml
```
