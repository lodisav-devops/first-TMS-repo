variable "sg_front_name" {
  type = string
  default = "frontend_sec_group"
}

variable "sg_backend_name" {
  type = string
  default = "backend_sec_group"
}

variable "ec2_instance_type" {
  type = string
  default = "t2.micro"
}

variable "key_name_ec2_frontend" {
  type = string
  default = "test-frontend-key-pair"
}

variable "key_name_ec2_backend" {
  type = string
  default = "test-backend-key-pair"
}

variable "allow_ports_backend" {
  type = list
  default = [ "22", "8080" ]
}

variable "allow_ports_frontend" {
  type = list
  default = [ "22", "80", "443" ]
}

variable "subnet_cidr_block_frontend" {
  type = string
  default = "172.31.64.0/24"
}

variable "subnet_cidr_block_backend" {
  type = string
  default = "172.31.65.0/24"
}

variable "subnet_map_public_ip_frontend" {
  type = bool
  default = "true"
}

variable "subnet_map_public_ip_backend" {
  type = bool
  default = "false"
}

variable "count_of_ec2_instance_backend" {
  type = string
  default = "2"
}

variable "default_aws_vpc" {
  type = bool
  default = "true"
}
