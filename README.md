# Example Many EC2s (Servers) on AWS Managed by Terraform

    2020 Ondrej Sika <ondrej@ondrejsika.com>
    https://github.com/ondrejsika/terraform-aws-ec2-many-example


## Run Server

```
terraform init
terraform plan
terraform apply -auto-approve
```

## Connect

 ```
ssh admin@ec2-0.sikademo.com
ssh admin@ec2-1.sikademo.com
#...
```


## Destroy Infrastructure

```
terraform destroy -auto-approve
```
