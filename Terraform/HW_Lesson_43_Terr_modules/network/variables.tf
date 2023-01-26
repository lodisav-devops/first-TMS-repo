variable "vpc_name" {
  type = string
  default = "vpc-dos11-la"
}

variable "vpc_cidr_block" {
  type = string
  default = "10.33.0.0/16"
}

variable "vpc_public_subnets" {
  type = list
  default = [ "10.33.11.0/24", "10.33.12.0/24", "10.33.13.0/24" ]
}

variable "vpc_private_subnets" {
  type = list
  default = [ "10.33.21.0/24", "10.33.22.0/24", "10.33.23.0/24", "10.33.81.0/24", "10.33.82.0/24", "10.33.83.0/24" ]
}

variable "vpc_common_tags" {
  type = map
  default = {
    Owner = "Lodis Artyom"    
  }
}

variable "default_enable_nat_gateway" {
  type = bool
  default = "true"
}

variable "default_single_nat_gateway" {
  type = bool
  default = "true"
}
