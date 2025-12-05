resource "aws_subnet" "main" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_block_subnet
  availability_zone = var.availability_zone_subnet

  tags = {
    Name = var.Name_subnet
  }
}

#creating a private subnet
resource "aws_subnet" "main_private" {
  vpc_id     = var.vpc_id
  cidr_block = var.private_subnet_cidr_block
  availability_zone = "us-east-1b"


  tags = {
    Name = var.anusha_private_subnet
  }
}