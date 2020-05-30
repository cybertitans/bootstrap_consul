<H1>Vault installation</H1>

#Steps

### Install --> Configure —> Start —> Initialise —> Unseal —>  Operate

|Create following directories|
|----------------------------|
|sudo mkdir /etc/vault|
|sudo mkdir /vault-data|
|sudo mkdir -p /logs/vault/|

|Instructions | Commands|
|-------------|---------|
|Download Vault and move it to the following directory| vault /usr/bin/|
|Create vault Service and copy vault.service| /etc/systemd/system/vault.service|
|Start vault services|systemctl start vault.service|
|Check service status|systemctl status vault.service|
|Enable vault service at boot up|systemctl enable vault.service|
|Initialise vault and copy tokens to a local file |Location of file is ~/.vault_init|
|Environment vault URL added .bashrc|export VAULT_ADDR=https://vault.askarta.local:8200 |
|Change vars in group_vars/all | change following var values  cert, privatekey and vault_add |

### Installation guideline
These playbooks automate the installation guidelines provided by Hashicorp and also configure certain secret engines such as
* LDAPS
* Mysql (Dynamically Create Credentials)
* Signing SSH keys
* Transit secrets

```
https://learn.hashicorp.com/vault/operations/ops-vault-ha-consul
https://devopscube.com/setup-hashicorp-vault-beginners-guide/
```
### Prerequisites and assumptions
* You used the consul playbooks
* Backend storage is Consul
* OS is Debian/Ubuntu
* You've created and have your own certs/Keys
* You have basic understanding of Linux, Vault, Consul, ansible
* Unseal before you run configuration playbook
