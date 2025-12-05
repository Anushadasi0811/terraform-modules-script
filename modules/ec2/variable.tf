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
    

variable "public_subnet_id" {
  type = string
}

variable "private_subnet_id" {
  type = string
}

variable "security_group" {
  type = string
}
