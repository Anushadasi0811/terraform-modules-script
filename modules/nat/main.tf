#creating a nat gateway elastic ip
resource "aws_eip" "lb" {
    domain = "vpc"
  tags = {
  Name = var.anu-nat-eip
}
}

#creating a nat gateway
resource "aws_nat_gateway" "nat_gateway_1" {
  allocation_id = aws_eip.lb.id
  subnet_id     = var.public_subnet_id

  tags = {
    Name = var.anusha_NAT
  }

}
