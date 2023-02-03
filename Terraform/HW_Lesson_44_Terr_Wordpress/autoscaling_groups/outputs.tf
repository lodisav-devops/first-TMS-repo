output "front_template" {
  value = data.aws_launch_template.front.id
}

output "front_alb" {
  value = data.aws_lb_target_group.front_alb.arn
}

output "back_alb" {
  value = data.aws_lb_target_group.back_alb.arn
}
