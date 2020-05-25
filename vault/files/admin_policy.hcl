path "secret/data/dev/*" {
  capabilities = ["read"]
}

path "secret/data/admin/*" {
  capabilities = ["create","read","delete","update","list"]
}

path "ssh-client/sign/*" {
  capabilities = ["create","update"]
}

path "transit/encrypt/*" {
	capabilities = ["create","read","delete","update","list"]
}

path "transit/decrypt/*" {
	capabilities = ["create","read","delete","update","list"]
}

path "mysql/*" {
	capabilities = ["create","read","delete","update","list"]
}

path "transit/*" {
	capabilities = ["create","read","delete","update","list"]
}

path "cubbyhole/*" {
	capabilities = ["deny"]
}

path "ssh-client/*" {
	capabilities = ["create","read","delete","update","list"]
}


path "pki_int/*" {
	capabilities = ["create","read","delete","update","list"]
}

#################
# Manage auth methods broadly across Vault
path "auth/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Create, update, and delete auth methods
path "sys/auth/*"
{
  capabilities = ["create", "update", "delete", "sudo"]
}

# List auth methods
path "sys/auth"
{
  capabilities = ["read"]
}

# Create and manage ACL policies
path "sys/policies/acl/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# To list policies - Step 3
path "sys/policies/acl"
{
  capabilities = ["list"]
}

# List, create, update, and delete key/value secrets
path "secret/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Create and manage secrets engines broadly across Vault.
path "sys/mounts/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Read health checks
path "sys/health"
{
  capabilities = ["read", "sudo"]
}

# To perform Step 4
path "sys/capabilities"
{
  capabilities = ["create", "update"]
}

# To perform Step 4
path "sys/capabilities-self"
{
  capabilities = ["create", "update"]
}
