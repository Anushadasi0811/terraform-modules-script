  #create a public ec2 instance_tenancy
  resource "aws_instance" "web" {
    ami           = var.ami_public
    instance_type = var.instance_type_public_ec2
    vpc_security_group_ids = [ var.security_group ]
    subnet_id = var.public_subnet_id
    key_name = var.anusha_key_public_ec2
    associate_public_ip_address = var.associate_public_ip_address

    tags = {
      Name = var.anusha_public_ec2_tag_name
    }
  }

  #create a private ec2 instance_tenancy
  resource "aws_instance" "web_1" {
    ami           = var.ami_private
    instance_type = var.instance_type_private_ec2
    vpc_security_group_ids = [ var.security_group ]
    subnet_id = var.private_subnet_id
    key_name = var.anusha_key_private_ec2
    associate_public_ip_address = var.associate_private_ip_address

    tags = {
      Name = var.anusha_private_ec2_name
    }
  }