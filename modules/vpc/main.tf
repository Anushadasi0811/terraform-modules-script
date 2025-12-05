resource "aws_vpc" "main" {
  cidr_block       = var.cidr_block_vpc
  instance_tenancy = var.instance_tenancy

  tags = {
    Name = var.Name_vpc
  }
}