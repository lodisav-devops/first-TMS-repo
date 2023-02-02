data "aws_ami" "frontend" {

  filter {
    name   = "name"
    values = ["tms-wordpress-front-tepmlate"]
  }

  owners = ["335809563306"]
}

data "aws_ami" "backend" {

  filter {
    name   = "name"
    values = ["tms-wordpress-back-tepmlate"]
  }

  owners = ["335809563306"]
}

data "aws_security_group" "ssh_from_bastion" {
  tags = {
    Name = "allow_ssh_from_bastion"    
  }
}
