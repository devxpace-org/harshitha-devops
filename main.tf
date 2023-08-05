provider "aws" {
  region     = "us-east-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0878a7bce0900eceb"
  instance_type = "t2.micro"
}
