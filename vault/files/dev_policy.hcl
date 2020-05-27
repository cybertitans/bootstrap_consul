path "secret/data/dev/*" {
  capabilities = ["create","read","delete","update","list"]
}

path "secret/data/admin" {
  capabilities = ["deny"]
}

path "ssh-key-signer/sign/*" {
  capabilities = ["deny"]
}

path "transit/encrypt/*" {
	capabilities = ["create","read","delete","update","list"]
}

path "mysql/creds/readonly" {
  capabilities = ["create","read","delete","update","list"]
}
