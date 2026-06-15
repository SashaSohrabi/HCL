terraform {
  backend "s3" {
    bucket       = "sascha-terraform-state-bucket"
    key          = "prod/terraform.tfstate"
    region       = "eu-central-1"
    use_lockfile = true
  }
}
