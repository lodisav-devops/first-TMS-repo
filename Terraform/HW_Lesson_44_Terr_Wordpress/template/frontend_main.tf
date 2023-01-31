data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

data "aws_security_group" "ssh_from_bastion" {
  tags = {
    Name = "allow_ssh_from_bastion"    
  }
}

resource "aws_launch_template" "frontend" {
  name = "frontend-ec2-template"
  image_id = data.aws_ami.ubuntu.id
  instance_initiated_shutdown_behavior = "terminate"
  instance_type = var.instance_type
  key_name = var.key_name_front
  # network_interfaces {
  #   associate_public_ip_address = true
  # }
  vpc_security_group_ids = [ data.aws_security_group.ssh_from_bastion.id ]  
}
