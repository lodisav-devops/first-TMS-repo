variable "tags" {
  type = map
  default = {
    Project = "tms-wordpress"
    Name = "dos11"
    Terraform = true
  }
}

variable "front_template_name" {
  type = string
  default = "frontend-ec2-template"
}

variable "front_target_alb_name" {
  type = string
  default = "front-lb-tg"
}

variable "back_template_name" {
  type = string
  default = "backend-ec2-template"
}

variable "back_target_alb_name" {
  type = string
  default = "back-lb-tg"
}

variable "backend_instance_name" {
  type = string
  default = "Backend-Instance"
}

variable "frontend_instance_name" {
  type = string
  default = "Frontend-Instance"
}
