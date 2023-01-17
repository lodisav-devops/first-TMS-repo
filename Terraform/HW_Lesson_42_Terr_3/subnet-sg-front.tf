data "aws_vpc" "def_vpc" {
  default = "true"
}

resource "aws_subnet" "subnet_frontend" {
  vpc_id = data.aws_vpc.def_vpc.id
  cidr_block = "172.31.64.0/24"
  map_public_ip_on_launch = true
  tags = {
    "Name" = "Frontend Subnet"
    "Owner" = "Lodis Artyom"
  }
}

resource "aws_security_group" "sg_frontend" {
  name = "${var.sg_front_name}"
  description = "Allow inbound traffic to the Frontend"

  dynamic "ingress" {
    for_each = ["22", "80", "443"]
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

  tags = {
    "Name" = "Frontend Security Group"
    "Owner" = "Lodis Artyom"
  }
}
