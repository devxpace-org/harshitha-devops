provider "aws" {
  region     = "us-east-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0878a7bce0900eceb"
  instance_type = "t2.micro"
    
tags = {
        Name = "Tf instance"
    }
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
tags = {
        Name = "Tf VPC"
    }
}

resource "aws_subnet" "Public-subnet1" {
  vpc_id            = "vpc-0f8e9732234994530"
  cidr_block        = "10.0.2.0/23"
  availability_zone = "us-east-2a"
tags = {
        Name = "Tf-Public-subnet1"
    }
}


