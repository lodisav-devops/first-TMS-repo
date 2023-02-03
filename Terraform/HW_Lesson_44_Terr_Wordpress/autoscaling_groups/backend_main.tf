resource "aws_autoscaling_group" "backend" {
  name                      = "backend_asg"
  max_size                  = 5
  min_size                  = 2
  desired_capacity          = 3
  launch_template {
    id = data.aws_launch_template.back.id
  }
  vpc_zone_identifier       = data.terraform_remote_state.network.outputs.private_subnets
  target_group_arns = [ data.aws_lb_target_group.back_alb.arn ]
  tag {
    key                 = "Name"
    value               = "${var.backend_instance_name}"
    propagate_at_launch = true
  }
}
