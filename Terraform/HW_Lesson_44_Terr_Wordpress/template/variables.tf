variable "tags" {
  type = map
  default = {
    Project = "tms-wordpress"
    Name = "dos11"
    Terraform = true
  }
}

variable "key_name_front" {
  type = string
  default = "test-frontend-key-pair"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "key_name_back" {
  type = string
  default = "test-backend-key-pair"
}
