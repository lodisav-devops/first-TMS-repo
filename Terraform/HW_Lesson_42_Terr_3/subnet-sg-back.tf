resource "aws_subnet" "subnet_backend" {
  vpc_id = data.aws_vpc.def_vpc.id
  cidr_block = "172.31.65.0/24"
  map_public_ip_on_launch = false
  tags = {
    "Name" = "Backend Subnet"
    "Owner" = "Lodis Artyom"
  }
}

resource "aws_security_group" "sg_backend" {
  name = "${var.sg_backend_name}"
  description = "Allow inbound traffic to the Backend"

  dynamic "ingress" {
    for_each = [ "22", "8080" ]
    content {
      description = "Ports from Backend"
      from_port        = ingress.value
      to_port          = ingress.value
      protocol         = "tcp"
      security_groups = [ aws_security_group.sg_frontend.id ]
    }
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  tags = {
    "Name" = "Backend Security Group"
    "Owner" = "Lodis Artyom"
  }
}
