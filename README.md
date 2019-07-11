# Terraform + httpbin + AWS + Cloudflare

Simple web server deployed in HA on AWS behind Cloudflare

## Requirements:
### AWS:
IAM Role to create ec2 instance, load balancers and security groups 
### Cloudflare
Api key and Setuped domain on cloudflare

Make a local copy of variables:
```cp variables.tf variables_override.tf```

Fill in all variables in variables_override.tf using vim/nano/whatever you like

Deploy:

```terraform init
terraform apply
```

---
maintainer: Dawid Łęczycki
---
