For example:
1. Export token:
```bash
export CONSUL_HTTP_TOKEN=<your_token_here>
```

2. Create agent policy file (get policy body):
```bash
cat consul-server-one-policy.hcl
```
```bash
node "consul1" {
  policy = "write"
}
node "consul2" {
  policy = "write"
}
node "consul2" {
  policy = "write"
}
```

3. Send request to server:
```
consul acl policy create   -name consul-server-one-policy   -rules @consul-server-one-policy.hcl
```
