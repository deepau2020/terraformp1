#Terraform block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
#Configure the AWS Provider also known as SetUp this Provider
#aws provider responsible for interaction between terraform and aws resources
#API call - terraform makes API  call to talk to AWS - AWS return information back to us
#hey terraform can you give us an ec2 instance?
#if you need to talk to system you need to get authenticated 

#Configure the AWS Provider also known as SetUp this Provider
provider "aws" {
  region = "us-east-1"
}

#Create an EC2 instance of type ubuntu
resource "aws_instance" "ubuntu_server" {
  ami = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"
  tags = {
    "name" = "helloworld-ubuntu-server" #map of strings
  }
}