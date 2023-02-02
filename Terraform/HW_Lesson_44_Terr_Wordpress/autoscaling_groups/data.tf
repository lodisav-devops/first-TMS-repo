data "terraform_remote_state" "network" {
    backend = "local"

    config = {
        path = "../network/terraform.tfstate.d/${terraform.workspace}/terraform.tfstate"
    }
}

data "aws_launch_template" "front" {
  name = var.front_template_name
}

data "aws_lb_target_group" "front_alb" {
  name = var.front_target_alb_name
}

data "aws_launch_template" "back" {
  name = var.back_template_name
}

data "aws_lb_target_group" "back_alb" {
  name = var.back_target_alb_name
}
