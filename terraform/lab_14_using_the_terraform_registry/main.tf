# Use the S3 bucket module from the Terraform Registry
# Use the VPC module from the Terraform Registry
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "6.6.1"

  name = "${var.environment}-vpc"
  cidr = var.vpc_cidr

  azs             = ["${var.region}a", "${var.region}b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}

module "s3_buckets" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "5.15.1"

  for_each = toset(var.bucket_names)

  bucket_prefix = "${var.environment}-${each.value}-"

  versioning = {
    enabled = true
  }

  tags = {
    Terraform   = "true"
    Environment = var.environment
    Name        = each.value
  }
}
