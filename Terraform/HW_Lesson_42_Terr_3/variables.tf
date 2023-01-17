variable "sg_front_name" {
  default = "frontend_sec_group"
}

variable "sg_backend_name" {
  default = "backend_sec_group"
}

variable "ec2_instance_type" {
  default = "t2.micro"
}

variable "key_name_ec2_frontend" {
  default = "test-frontend-key-pair"
}

variable "key_name_ec2_backend" {
  default = "test-backend-key-pair"
}
