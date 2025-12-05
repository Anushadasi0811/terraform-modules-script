#creating key-pair
resource "aws_key_pair" "deployer" {
  key_name   = var.anusha_key_name
  public_key = var.public_key

}