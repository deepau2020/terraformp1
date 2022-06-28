terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
  profile = "tf-west2"
}
resource "aws_instance" "dee_linux_server" {
    ami = "ami-098e42ae54c764c35"
    instance_type = "t2.micro"
    tags = {
      "Name" = "terraformp1"
    }
    availability_zone = "us-west-2b"
    key_name = "OregonKey"
  
}

resource "aws_vpc" "dee_tf_vpc" {
    cidr_block = "10.123.0.0/16"
    instance_tenancy = "default"
    tags = {
      "Name" = "dee_tf_vpc"
    }
  
}
