terraform {
  required_version = "1.13.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket       = "sascha-terraform-state-bucket"
    key          = "lab/07/terraform.tfstate"
    region       = "eu-central-1"
    use_lockfile = true
  }
}