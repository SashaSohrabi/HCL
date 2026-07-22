output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_id" {
  value = module.network.subnet_id
}

output "security_group_id" {
  value = aws_security_group.app.id
}