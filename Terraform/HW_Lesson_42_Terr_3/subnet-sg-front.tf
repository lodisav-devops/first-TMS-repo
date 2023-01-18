data "aws_vpc" "def_vpc" {
  default = "${var.default_aws_vpc}"
}

resource "aws_subnet" "subnet_frontend" {
  vpc_id = data.aws_vpc.def_vpc.id
  cidr_block = "${var.subnet_cidr_block_frontend}"
  map_public_ip_on_launch = "${var.subnet_map_public_ip_frontend}"
  tags = merge(var.common_tags, { Name = "Frontend Subnet" })
}

resource "aws_security_group" "sg_frontend" {
  name = "${var.sg_front_name}"
  description = "Allow inbound traffic to the Frontend"

  dynamic "ingress" {
    for_each = "${var.allow_ports_frontend}"
    content {
      description      = "Ports from Internet"
      from_port        = ingress.value
      to_port          = ingress.value
      protocol         = "tcp"
      cidr_blocks = [ "0.0.0.0/0" ]
    }
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  tags = merge(var.common_tags, { Name = "Frontend Security Group" })
}
