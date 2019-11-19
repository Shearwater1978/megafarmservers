# Create agent policy
##1. Export token:
```bash
export CONSUL_HTTP_TOKEN=<your_token_here>
```

##2. Create agent policy file (you can see policy body in files consul-server-one-policy.hcl):
```bash
vi consul-server-one-policy.hcl
```

##3. Send request to server:
```
consul acl policy create   -name consul-server-one-policy   -rules @consul-server-one-policy.hcl
```

# Create the Agent Token
```bash
consul acl token create -description "consul-server-one agent token" \
  -policy-name consul-server-one-policy
```
