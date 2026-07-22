variable "vpc_id" {
  description = "ID of the VPC where the subnet will be created"
  type        = string
}

resource "aws_subnet" "app" {
  vpc_id     = var.vpc_id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "lab-subnet"
  }
}
