resource "aws_launch_template" "frontend" {
  name = "frontend-ec2-template"
  image_id = data.aws_ami.frontend.id
  instance_initiated_shutdown_behavior = "terminate"
  instance_type = var.instance_type
  key_name = var.key_name_front
  vpc_security_group_ids = [ data.aws_security_group.ssh_from_bastion.id ]  
}
