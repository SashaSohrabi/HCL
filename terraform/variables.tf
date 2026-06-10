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

variable "public_subnet_cidrs" {
  description = "CIDR block for public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidrs" {
  description = "CIDR block for private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "availability_zone" {
  description = "Availability Zone for subnets"
  type        = string
  default     = "us-east-1a"
}
