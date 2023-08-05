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
}
