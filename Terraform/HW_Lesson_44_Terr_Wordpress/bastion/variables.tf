variable "tags" {
  type = map
  default = {
    Project = "tms-wordpress"
    Name = "dos11"
    Terraform = true
  }
}

variable "key_name_ec2_bastion" {
  type = string
  default = "test-bastion-key-pair"
}
