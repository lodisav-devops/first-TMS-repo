resource "aws_instance" "ec2_database" {  
  ami = data.aws_ami.ubuntu_22_ami_latest.id
  instance_type = "${var.ec2_instance_type}"
  key_name = "${var.key_name_ec2_database}"
  subnet_id = data.terraform_remote_state.network.outputs.vpc_subnets_private[4]
  vpc_security_group_ids = [ aws_security_group.sg_database.id ]
  tags = merge(var.common_tags, { Name = "Database Instance" }, { Environment = "${terraform.workspace}" })
}

resource "aws_security_group" "sg_database" {
  name = "${var.sg_database_name}"
  description = "Allow inbound traffic to the Database"
  vpc_id = data.terraform_remote_state.network.outputs.my_vpc_id

  ingress {
    description = "SSH port for Database"
    from_port = "${var.database_port_for_ssh}"
    to_port = "${var.database_port_for_ssh}"
    protocol = "${var.sg_protocol}"
    security_groups = [ aws_security_group.sg_frontend.id ]
  }

  ingress {
    description = "TCP port for Database (Postgresql)"
    from_port = "${var.database_port_for_tcp}"
    to_port = "${var.database_port_for_tcp}"
    protocol = "${var.sg_protocol}"
    security_groups = [ aws_security_group.sg_backend.id ]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  tags = merge(var.common_tags, { Name = "Database Security Group" }, { Environment = "${terraform.workspace}" })
}
