data "aws_instance" "front_ip" {
  filter {
    name   = "tag:Name"
    values = ["Frontend Instance"]
  }

  filter {
    name   = "instance-state-name"
    values = ["running"]
  }

  depends_on = [
    aws_instance.ec2_frontend
  ]
}

data "aws_instance" "back_ip" {
  filter {
    name   = "tag:Name"
    values = ["Backend Instance"]
  }

  filter {
    name   = "instance-state-name"
    values = ["running"]
  }

  depends_on = [
    aws_instance.ec2_backend
  ]
}

resource "aws_instance" "ec2_backend" {  
  ami = data.aws_ami.ubuntu_22_ami_latest.id
  instance_type = "${var.ec2_instance_type}"
  key_name = "${var.key_name_ec2_backend}"
  subnet_id = data.terraform_remote_state.network.outputs.vpc_subnets_private[1]
  vpc_security_group_ids = [ aws_security_group.sg_backend.id ]
  tags = merge(var.common_tags, { Name = "Backend Instance" }, { Environment = "${terraform.workspace}" })
  depends_on = [
    aws_instance.ec2_frontend
  ]

  connection {
    type     = "ssh"
    bastion_host = data.aws_instance.front_ip.public_ip
    bastion_user = "ubuntu"
    bastion_private_key = file("C:/Users/Admin/.ssh/test-frontend-key-pair.pem")
    user     = "ubuntu"
    private_key = file("C:/Users/Admin/.ssh/test-backend-key-pair.pem")
    host     = self.private_ip
  }
  
  provisioner "file" {
    source      = "default_back"
    destination = "/home/ubuntu/default"
  }

  provisioner "file" {
    source      = "index.html"
    destination = "/home/ubuntu/index.html"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update -y",
      "sudo apt-get install -y nginx",
      "sudo mv /home/ubuntu/default /etc/nginx/sites-available/default",
      "sudo mv /home/ubuntu/index.html /var/www/html/index.html",
      "sudo systemctl restart nginx",
    ]
  }
}

resource "aws_security_group" "sg_backend" {
  name = "${var.sg_backend_name}"
  description = "Allow inbound traffic to the Backend"
  vpc_id = data.terraform_remote_state.network.outputs.my_vpc_id

  dynamic "ingress" {
    for_each = "${var.allow_ports_backend}"
    content {
      description = "Ports from Backend"
      from_port = ingress.value
      to_port = ingress.value
      protocol = "${var.sg_protocol}"
      security_groups = [ aws_security_group.sg_frontend.id ]
    }
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

  tags = merge(var.common_tags, { Name = "Backend Security Group" }, { Environment = "${terraform.workspace}" })
}

resource "null_resource" "change_front_nginx_conf" {
  connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key = file("C:/Users/Admin/.ssh/test-frontend-key-pair.pem")
    host     = data.aws_instance.front_ip.public_ip
  }

  provisioner "remote-exec" {
    inline = [ 
      "sudo sed -i 's/10.33.0.0/${data.aws_instance.back_ip.private_ip}/' /etc/nginx/sites-available/default",
      "sudo systemctl restart nginx",
    ]
  }

  depends_on = [
    aws_instance.ec2_backend
  ]
}
