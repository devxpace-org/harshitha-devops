provider "aws" {
  region     = "us-east-2"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
tags = {
        Name = "Tf VPC"
    }
}

resource "aws_subnet" "Public-subnet1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-2a"
tags = {
        Name = "Tf-Public-subnet1"
    }
}

resource "aws_subnet" "Public-subnet2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-2a"
tags = {
        Name = "Tf-Public-subnet2"
    }
}

resource "aws_subnet" "Private-subnet1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-2a"
tags = {
        Name = "Tf-Private-subnet1"
    }
}

resource "aws_subnet" "Private-subnet2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "us-east-2a"
tags = {
        Name = "Tf-Private-subnet2"
    }
}

resource "aws_internet_gateway" "example" {
  vpc_id = aws_vpc.main.id

tags = {
    Name = "InternetGateway"
  }
}

resource "aws_route_table" "Public-subnet1" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.example.id
  }

  tags = {
    Name = "PublicRouteTable"
  }
}

resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.Public-subnet1.id
  route_table_id = aws_route_table.Public-subnet1.id
}






