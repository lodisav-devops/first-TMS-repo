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

data "aws_security_group" "http_from_front" {
  tags = {
    Name = "allow_http_from_front_alb"    
  }
}

data "aws_security_group" "http_from_back" {
  tags = {
    Name = "allow_http_from_back_alb"    
  }
}
