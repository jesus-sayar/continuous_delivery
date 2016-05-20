# Continous Delivery

Apply Continous Delivery using Ansible, Terraform and Consul

## Terraform

## Ansible

## Consul

### Http queries
http localhost:8500/v1/catalog/services
http localhost:8500/v1/catalog/service/simple_app

### DNS queries
dig @127.0.0.1 -p 8600 simple_app.service.consul

## Some unix tools

- httpie: http command client