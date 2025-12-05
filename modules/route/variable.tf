#public route table variables
variable "public_route_table_cidr_block" {
    description = "cidr block for public toute table"
    type = string
}

variable "anusha_public_rt" {
    description = "name of public route table"
    type = string
}

#private route table variables
variable "private_route_table_cidr_block" {
    description = "cidr_block for public toute table"
    type = string
}
variable "anusha_private_rt" {
    description = "name of public route table"
    type = string
}

variable "vpc_id" {
  type = string
}

variable "internet_gate_way" {
  description = "ID of the Internet Gateway for public route"
  type        = string
}

variable "public_subnet_id" {
  type = string
}

variable "private_subnet_id" {
  type = string
}

variable "nat_gateway_id" {
  description = "ID of the Internet Gateway for public route"
  type        = string
}

