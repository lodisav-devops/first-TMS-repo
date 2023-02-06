variable "tags" {
  type = map
  default = {
    Project = "tms-wordpress"
    Name = "dos11"
    Terraform = true
  }
}

variable "allow_ports" {
  type = list
  default = [ "80", "8080" ]
}
