resource "aws_launch_template" "backend" {
  name = "backend-ec2-template"
  image_id = data.aws_ami.ubuntu.id
  instance_initiated_shutdown_behavior = "terminate"
  instance_type = var.instance_type
  key_name = var.key_name_back
  # network_interfaces {
  #   associate_public_ip_address = false
  # }
  vpc_security_group_ids = [ data.aws_security_group.ssh_from_bastion.id ]  
}