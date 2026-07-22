output "subnet_id" {
  description = "ID of the application subnet"
  value = aws_subnet.app.id
}