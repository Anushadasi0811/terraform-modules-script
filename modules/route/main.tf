# Public Route Table
resource "aws_route_table" "public_route" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.public_route_table_cidr_block
    gateway_id = var.internet_gate_way
  }

  tags = {
    Name = var.anusha_public_rt
  }
}

# Private Route Table
resource "aws_route_table" "private_route" {
  vpc_id = var.vpc_id

route {
    cidr_block = var.private_route_table_cidr_block
    nat_gateway_id = var.nat_gateway_id
}
  

  tags = {
    Name = var.anusha_private_rt
  }
}

# Public subnet association
resource "aws_route_table_association" "public_subnet_association" {
  route_table_id = aws_route_table.public_route.id
  subnet_id      = var.public_subnet_id
}

# Private subnet association
resource "aws_route_table_association" "private_subnet_association" {
  route_table_id = aws_route_table.private_route.id
  subnet_id      = var.private_subnet_id

}
