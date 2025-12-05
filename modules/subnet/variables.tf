variable "vpc_id" {
  description = "this is vpc id"
}

variable "cidr_block_subnet" {
  description = "subnet cidr block"
}

variable "availability_zone_subnet" {
  description = "zone for pub subnet"
}

variable "Name_subnet" {
  description = "name for subnet"
}

# private subnet variables
variable "private_subnet_cidr_block" {
    description = "cidr_block of private subnet"
    type = string
}

variable "anusha_private_subnet" {
    description = "name of anusha_private_subnet"
    type = string
}