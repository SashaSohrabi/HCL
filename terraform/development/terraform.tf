terraform {
  required_version = ">=1.12.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket       = "sascha-terraform-state-bucket"
    key          = "development/terraform.tfstate"
    region       = "eu-central-1"
    use_lockfile = true
  }
}