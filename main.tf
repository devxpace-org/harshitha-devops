provider "aws" {
    region = "us-east-2"
}

resource "aws_instance" "myec2" {
    ami = "ami-098dd3a86ea110896"
    instance_type = "t2.micro"

    tags = {
        Name = "Terraform-ec2"
    }
}
