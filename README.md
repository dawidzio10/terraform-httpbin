# Terraform + AWS + CloudFlare + httpbin

Simple web server deployed in HA on AWS behind CloudFlare

## Requirements
### AWS
IAM Role to create EC2 instance, load balancer and security groups 
### CloudFlare
Api key and Setuped domain on CloudFlare

## Instalation
Make a local copy of variables:
```
cp variables.tf variables_override.tf
```

Fill in all variables in variables_override.tf using vim/nano/whatever you like

Init Terraform env:
```
terraform init
```
Deploy
```
terraform apply
```
Review changes and type yes

## Destroy
If you want to destroy environment:
```
terraform destroy
```
---
maintainer: Dawid Łęczycki
---
