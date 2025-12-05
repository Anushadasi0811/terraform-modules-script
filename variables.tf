# vpc variables

variable "cidr_block_vpc" {
  description = "vpc cidr block"
}

variable "instance_tenancy" {
  description = "vpc default tenancy"
}

variable "Name_vpc" {
  description = "vpc name"
}

#public subnet variables

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

#internet gateway variables
variable "internet_gateway" {
    description = "name of internet_gateway"
    type = string
}

#nat gatw_way name
variable "anusha_NAT" {
    description = "natgate_way name"
    type = string
}

#nat gateway elastic ip variable
variable "anu-nat-eip" {
    description = "natgate_way_elastic ip name"
    type = string
}


#route tables variables
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

#security group variables
  variable "anusha_security" {
    description = "security group name"
    type = string
    }

    #key pair variable
variable "anusha_key_name" {
    description = "key-pair name"
    type = string
    }

    variable "public_key" {
    description = "public-key-pair name"
    type = string
    }


#public ec2 instance_tenancy
variable "ami_public"{
    description = "ami-id"
    type = string
    }

    variable "instance_type_public_ec2" {
    description = "instance_type id for public ec2"
    type = string
    }

    variable "anusha_key_public_ec2" {
    description = "key-pair name for public ec2"
    type = string
    }

    variable "associate_public_ip_address" {
    description = "associate public ip address"
    type = bool
    }
    

    variable "anusha_public_ec2_tag_name" {
    description = "tag name for public ec2"
    type = string
    }
    

#private ec2 instance_tenancy
variable "ami_private" {
    description = "ami-id"
    type = string
    }

    variable "instance_type_private_ec2" {
    description = "instance_type id for private ec2"
    type = string
    }

    variable "anusha_key_private_ec2" {
    description = "key-pair name for private ec2"
    type = string
    }
    variable "associate_private_ip_address" {
    description = "associate private ip address"
    type = bool
    }

    variable "anusha_private_ec2_name" {
    description = "tag name for private ec2"
    type = string
}
    