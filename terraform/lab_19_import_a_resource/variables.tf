variable "aws_region" {
  description = "AWS region in which to manage resources"
  type        = string
  default     = "eu-central-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "prefix" {
  description = "Prefix used when naming resources"
  type        = string
  default     = "lab"
}

variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "eu-central-1"
}