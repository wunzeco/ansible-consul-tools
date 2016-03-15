CONSUL-TOOLS
======

Ansible role to install and configure Consul tools e.g. consul-template


## Example

```
    
  roles:
    - { role: wunzeco.consul-tools, consul_tools_name: consul-template, consul_tools_version: 0.12.1 }
    - { role: wunzeco.consul-tools, consul_tools_name: consul-replicate, consul_tools_version: 0.2.0 }
```

## Dependencies

none
