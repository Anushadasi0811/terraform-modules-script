#nat gateway elastic ip variable
variable "anu-nat-eip" {
    description = "natgate_way_elastic ip name"
    type = string
    }

#nat gatw_way name
variable "anusha_NAT" {
    description = "natgate_way name"
    type = string
}

variable "public_subnet_id" {
    description = "subnet_id"
    type = string
}
