data "aws_launch_template" "front" {
  name = var.front_template_name
}

output "front_template" {
  value = data.aws_launch_template.front.id
}

data "aws_lb_target_group" "front_alb" {
  name = var.front_target_alb_name
}

output "front_alb" {
  value = data.aws_lb_target_group.front_alb.arn
}

data "aws_launch_template" "back" {
  name = var.back_template_name
}

data "aws_lb_target_group" "back_alb" {
  name = var.back_target_alb_name
}

output "back_alb" {
  value = data.aws_lb_target_group.back_alb.arn
}
