data "terraform_remote_state" "network" {
    backend = "local"

    config = {
        path = "../network/terraform.tfstate.d/${terraform.workspace}/terraform.tfstate"
    }
}

resource "aws_autoscaling_group" "frontend" {
  name                      = "frontend_asg"
  max_size                  = 4
  min_size                  = 1
  desired_capacity          = 2
  launch_template {
    id = data.aws_launch_template.front.id
  }
  vpc_zone_identifier       = data.terraform_remote_state.network.outputs.public_subnets
  target_group_arns = [ data.aws_lb_target_group.front_alb.arn ]
}
