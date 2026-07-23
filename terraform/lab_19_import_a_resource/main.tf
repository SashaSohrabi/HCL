resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "${var.prefix}-vpc"
  }
}

import {
  to = aws_subnet.app
  id = "subnet-0e108e3ef7ad82add"
}

resource "aws_subnet" "app" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "${var.prefix}-subnet"
  }
}

import {
  to = aws_security_group.app
  id = "sg-0e70c41d30efa4acf"
}

resource "aws_security_group" "app" {
  description            = "Lab security group"
  name                   = "lab-web-sg"
  region                 = var.region
  tags = {
    Name = "lab-web-sg"
  }
  vpc_id = aws_vpc.main.id
}
