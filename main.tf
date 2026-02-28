resource "aws_instance" "app_server" {
  ami           = var.ami
  instance_type = var.instance_type

  subnet_id = aws_subnet.app_subnet.id

  tags = {
    Name = "App Server"
  }
}

resource "aws_subnet" "app_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidr_block

  tags = {
    Name = "App Subnet"
  }
}

resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"

  tags = {
    Name = "Main VPC"
  }
}
