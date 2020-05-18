 consul acl policy list
```
 global-management:
    ID:           00000000-0000-0000-0000-000000000001
    Description:  Builtin Policy that grants unlimited access
    Datacenters:
 list-all-nodes:
    ID:           00f9f32f-0a4a-d674-6a88-593e5f5356d3
    Description:
    Datacenters:
 ui-policy:
    ID:           02f40ac0-08f1-ac94-65c4-8008771a9a63
    Description:  Necessary permissions for UI functionality
    Datacenters:
 agent-token:
    ID:           672f000f-1325-651a-d6f4-e6a34cd6b7ce
    Description:  Agent Token Policy
    Datacenters:
 service-consul-read:
    ID:           f319c0b2-3d49-766b-ded0-108e397668ad
    Description:
    Datacenters:
```
consul acl policy read -id 672f000f-1325-651a-d6f4-e6a34cd6b7ce

```
ID:           672f000f-1325-651a-d6f4-e6a34cd6b7ce
Name:         agent-token
Description:  Agent Token Policy
Datacenters:
Rules:
node_prefix "" {
   policy = "write"
}
service_prefix "" {
   policy = "write"
}

key_prefix "" {
  policy = "write"
}

agent_prefix "" {
  policy = "write"
}

session_prefix "" {
  policy = "write"
}
```

 consul catalog nodes -detailed
```
 consul01  119480ce  192.168.50.193  dc1
 consul02  d7ded6d5  192.168.50.194  dc1
 consul03  a08cd93e  192.168.50.195  dc1
 vault01   95558ee0  192.168.50.192  dc1
 vault02   2ca5e0c0  192.168.50.190  dc1
```
 consul acl token list
```
AccessorID:       39275781-db5f-bac7-58af-16d04abea112
Description:      Agent Token
Local:            false
Create Time:      2020-04-10 20:41:35.451284143 +0000 UTC
Legacy:           false
Policies:
   672f000f-1325-651a-d6f4-e6a34cd6b7ce - agent-token

AccessorID:       9261d46b-640f-4f13-117e-5e00676a22c7
Description:      UI Token
Local:            false
Create Time:      2020-04-10 21:21:51.459866301 +0000 UTC
Legacy:           false
Policies:
   02f40ac0-08f1-ac94-65c4-8008771a9a63 - ui-policy

AccessorID:       00000000-0000-0000-0000-000000000002
Description:      Anonymous Token - Can List Nodes
Local:            false
Create Time:      2020-04-10 20:35:57.084470356 +0000 UTC
Legacy:           false
Policies:
   00f9f32f-0a4a-d674-6a88-593e5f5356d3 - list-all-nodes
   f319c0b2-3d49-766b-ded0-108e397668ad - service-consul-read

AccessorID:       b7335508-db71-b8c5-f0a6-046abbff36c4
Description:      Bootstrap Token (Global Management)
Local:            false
Create Time:      2020-04-10 20:39:10.520767911 +0000 UTC
Legacy:           false
Policies:
   00000000-0000-0000-0000-000000000001 - global-management
```

consul acl policy read -id   02f40ac0-08f1-ac94-65c4-8008771a9a63
```
ID:           02f40ac0-08f1-ac94-65c4-8008771a9a63
Name:         ui-policy
Description:  Necessary permissions for UI functionality
Datacenters:
Rules:
key_prefix"" { policy = "read" } node_prefix "" { policy = "read" } service_prefix "" { policy = "read" }
```
