provider "aws" {
  profile    = "default"
  region     = "us-east-2"
}

resource "aws_instance" "example" {
  ami           = "ami-04505608c94c168b1"
  instance_type = "t2.micro"
}
