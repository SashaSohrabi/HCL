variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "192.168.0.0/16"
}

variable "environment" {
  description = "Environment tag for resources"
  type        = string
  default     = "learning-terraform"
}
