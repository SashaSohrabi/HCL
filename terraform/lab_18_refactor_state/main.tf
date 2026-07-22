resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "lab-vpc"
  }
}

module "network" {
  source = "./modules/network"
  vpc_id = aws_vpc.main.id
}

resource "aws_security_group" "app" {
  name        = "lab-web-sg"
  description = "Lab security group"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "lab-web-sg"
  }
}

removed {
  from = aws_route_table.main

  lifecycle {
    destroy = true
  }
}

