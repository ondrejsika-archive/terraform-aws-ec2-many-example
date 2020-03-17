# Example EC2 (Server) on AWS Managed by Terraform

    2020 Ondrej Sika <ondrej@ondrejsika.com>
    https://github.com/ondrejsika/terraform-aws-ec2-example


## Run Server

```
terraform init
terraform plan
terraform apply -auto-approve
```

## Connect

 ```
ssh admin@ec2.sikademo.com
```


## Destroy Infrastructure

```
terraform destroy -auto-approve
```
