variable "ec2_instance_type" {
  type = string
  default = "t2.micro"
}

variable "key_name_ec2_frontend" {
  type = string
  default = "test-frontend-key-pair"
}

variable "common_tags" {
  type = map
  default = {
    Owner = "Lodis Artyom"    
  }
}

variable "sg_front_name" {
  type = string
  default = "Frontend_sec_group"
}

variable "allow_ports_frontend" {
  type = list
  default = [ "22", "80", "443" ]
}

variable "sg_protocol" {
  type = string
  default = "tcp"
}

variable "sg_front_ingress_cidr_block" {
  type = string
  default = "0.0.0.0/0"
}

variable "key_name_ec2_backend" {
  type = string
  default = "test-backend-key-pair"
}

variable "sg_backend_name" {
  type = string
  default = "Backend_sec_group"
}

variable "allow_ports_backend" {
  type = list
  default = [ "22", "8080" ]
}

variable "key_name_ec2_database" {
  type = string
  default = "test-database-key-pair"
}

variable "sg_database_name" {
  type = string
  default = "Database_sec_group"
}

variable "database_port_for_ssh" {
  type = string
  default = "22"
}

variable "database_port_for_tcp" {
  type = string
  default = "5432"
}
