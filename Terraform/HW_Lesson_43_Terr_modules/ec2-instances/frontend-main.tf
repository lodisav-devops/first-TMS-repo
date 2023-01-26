data "terraform_remote_state" "network" {
  backend = "local"
  config = {
    path = "../network/terraform.tfstate.d/${terraform.workspace}/terraform.tfstate"
   }
}

data "aws_ami" "ubuntu_22_ami_latest" {
  owners = [ "099720109477" ]
  most_recent = true
  filter {
    name = "name"
    values = [ "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*" ]
  }
}

resource "aws_instance" "ec2_frontend" {
  ami = data.aws_ami.ubuntu_22_ami_latest.id
  instance_type = "${var.ec2_instance_type}"
  key_name = "${var.key_name_ec2_frontend}"
  subnet_id = data.terraform_remote_state.network.outputs.vpc_subnets_public[1]
  vpc_security_group_ids = [ aws_security_group.sg_frontend.id ]
  tags = merge(var.common_tags, { Name = "Frontend Instance" }, { Environment = "${terraform.workspace}" })

  connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key = file("C:/Users/Admin/.ssh/test-frontend-key-pair.pem")
    host     = self.public_ip
  }
  
  provisioner "file" {
    source      = "default_front"
    destination = "/home/ubuntu/default"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update -y",
      "sudo apt-get install -y nginx",
      "sudo mv /home/ubuntu/default /etc/nginx/sites-available/default",
      "sudo systemctl restart nginx",
    ]
  }
}

resource "aws_security_group" "sg_frontend" {
  name = "${var.sg_front_name}"
  description = "Allow inbound traffic to the Frontend"
  vpc_id = data.terraform_remote_state.network.outputs.my_vpc_id

  dynamic "ingress" {
    for_each = "${var.allow_ports_frontend}"
    content {
      description = "Ports from Internet"
      from_port = ingress.value
      to_port = ingress.value
      protocol = "${var.sg_protocol}"
      cidr_blocks = [ "${var.sg_front_ingress_cidr_block}" ]
    }
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  tags = merge(var.common_tags, { Name = "Frontend Security Group" }, { Environment = "${terraform.workspace}" })
}
