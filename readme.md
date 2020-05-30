## Consul - Introduction

Consul is a Hashicorp based tool for discovering and configuring a variety of different services in your infrastructure. It is based and built on Golang. One of the core reasons to build Consul was to maintain the services present in the distributed systems. Some of the significant features that Consul provides are as follows.

  | |
  |---------|
  | Service Discovery − Using either DNS or HTTP, applications can easily find the services they depend upon.|
  | Health Check Status − It can provide any number of health checks. It is used by the service discovery components to route traffic away from unhealthy hosts.|
  | Key/Value Store − It can make use of Consul's hierarchical key/value store for any number of purposes, including dynamic configuration, feature flagging, coordination, leader election, etc.|
  | Multi Datacenter Deployment − Consul supports multiple datacentres. It is used for building additional layers of abstraction to grow to multiple regions.|
  | Web UI − Consul provides its users a beautiful web interface using which it can be easy to use and manage all of the features in consul.|

## Consul - Architecture

![Consul - Architecture](files/vault-ha-consul.png)

## Prerequisites and assumptions

-	Debian/ubuntu OS
-	VMs working and installed
-	Python2 installed
-	SSH config done and keys added to authorized_key
-	Server names added to hosts file ( not necessary if inventory file is configured correctly)
-	Inventory file has the right configs (inc python version )
-	Control server can reach all VMs
-	Basic Linux skills


## Example inventory file

```
[consulclients]
consulclient1 ansible_host=192.168.50.177
consulclient2 ansible_host=192.168.50.178

[consulservers]
consuls1 ansible_host=192.168.50.187
consuls2 ansible_host=192.168.50.188
consuls3 ansible_host=192.168.50.189

[vaultservers]
vaultserver1 ansible_host=192.168.50.177
vaultserver2 ansible_host=192.168.50.178

[all:vars]
ansible_connection=ssh
ansible_user=ubuntu
ansible_ssh_pass=xxxxxxxx
ansible_sudo_pass=xxxxxxxx
ansible_python_interpreter=/usr/bin/python2.7
```
## Instructions

- Ensure all servers can communicate and prerequisites listed above are installed
- Only use to bootstrap and build a new cluster
- Ensure you add number of servers to the group_vars/all file (default is 3)
- Ensure you change the datacenter name (group_vars/all)
- Ensure bootstrap.yml host is pointing to only one server (default is consuls1)
- If ACL is not required use config.json.j2 template and run installcluster.yml
- Check the policies to ensure required access is provided
- Tokens created will be stored in ~/.tokenname  
- Encryption key will be installed group_vars/encryption_keygen
- Binary is expected to be in files/consul/consul_1.7.2_linux_amd64.zip
