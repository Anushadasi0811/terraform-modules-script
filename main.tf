# Call vpc vpc module
module "vpc" {
  source = "./modules/vpc"
  cidr_block_vpc = var.cidr_block_vpc
  Name_vpc = var.Name_vpc
  instance_tenancy = var.instance_tenancy
}


# call subnet module

module "subnet"{
  source = "./modules/subnet"
  vpc_id = module.vpc.vpc_id
  cidr_block_subnet = var.cidr_block_subnet
  availability_zone_subnet = var.availability_zone_subnet
  Name_subnet = var.Name_subnet

  private_subnet_cidr_block = var.private_subnet_cidr_block
  anusha_private_subnet = var.anusha_private_subnet
}

module "internet_gateway" {
  source = "./modules/igw"
  vpc_id = module.vpc.vpc_id
  internet_gateway = var.internet_gateway

}

#nat gate_way
module "nat_gateway" {
  source = "./modules/nat"
  anu-nat-eip = var.anu-nat-eip
  anusha_NAT = var.anusha_NAT
  public_subnet_id = module.subnet.public_subnet_id
}

#route_tables 
module "route_table" {
  source = "./modules/route"
  vpc_id                         = module.vpc.vpc_id
  public_route_table_cidr_block  = var.public_route_table_cidr_block
  anusha_public_rt               = var.anusha_public_rt
  private_route_table_cidr_block = var.private_route_table_cidr_block
  anusha_private_rt              = var.anusha_private_rt
  internet_gate_way              = module.internet_gateway.internet_gate_way
  public_subnet_id = module.subnet.public_subnet_id
  private_subnet_id = module.subnet.private_subnet_id
    nat_gateway_id  = module.nat_gateway.nat_gateway_id

}

#scurity
module "security" {
  source = "./modules/security"
  anusha_security = var.anusha_security
  vpc_id          = module.vpc.vpc_id
}

#keys
module "keys" {
  source = "./modules/keys"
  anusha_key_name = var.anusha_key_name
  public_key = var.public_key

}

#ec2 calling
module "ec2_instance" {
  source = "./modules/ec2"
  ami_public           = var.ami_public
  instance_type_public_ec2 = var.instance_type_public_ec2
  anusha_public_ec2_tag_name = var.anusha_public_ec2_tag_name
  public_subnet_id = module.subnet.public_subnet_id
  security_group = module.security.security
  anusha_key_public_ec2 = var.anusha_key_public_ec2
  associate_public_ip_address = var.associate_public_ip_address

  ami_private           = var.ami_private
  instance_type_private_ec2 = var.instance_type_private_ec2
  private_subnet_id = module.subnet.private_subnet_id
  anusha_key_private_ec2 = var.anusha_key_private_ec2
  associate_private_ip_address = var.associate_private_ip_address
  anusha_private_ec2_name = var.anusha_private_ec2_name

}








