

output "public_subnet_id" {
  value = aws_subnet.main.id
}

output "private_subnet_id" {
  value = aws_subnet.main_private.id
}
