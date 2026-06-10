# Create the primary VPC for workloads
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name        = "terraform-course"
    Environment = var.environment
  }
}

resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidrs
  availability_zone = var.availability_zone

  tags = {
    Name        = "terraform-course-public-subnet"
    Environment = var.environment
  }
}
