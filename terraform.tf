variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "cloudflare_email" {}
variable "cloudflare_token" {}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = "eu-central-1"
}

provider "cloudflare" {
  version = "~> 1.0"
  email = var.cloudflare_email
  token = var.cloudflare_token
}

resource "aws_instance" "ec2" {
  // Debian 10 AMI
  ami = "ami-080df3f56add7eca7"
  instance_type = "t2.micro"
  key_name = "ondrejsika"
  security_groups = [
    "allow_all"
  ]
}

resource "cloudflare_record" "a_record" {
  domain = "sikademo.com"
  name   = "ec2"
  value  = aws_instance.ec2.public_ip
  type   = "A"
  proxied = false
}


resource "cloudflare_record" "wildcard_record" {
  domain = "sikademo.com"
  name   = "*.ec2"
  value  = "ec2.sikademo.com"
  type   = "CNAME"
  proxied = false
}
