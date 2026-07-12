provider "aws" {
  region = "eu-central-1"

  default_tags {
    tags = {
      Project    = "Terraform Testing"
      Managed_By = "Terraform"
    }
  }
}
