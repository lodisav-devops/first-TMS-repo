packer {
  required_plugins {
    amazon = {
      version = " >= 0.0.2 "
      source  = "github.com/hashicorp/amazon"
    }
  }
}

source "amazon-ebs" "ubuntu" {
  ami_name      = "tms-wordpress-front-tepmlate"
  instance_type = "t2.micro"
  region        = "eu-west-1"
  tags          = {
    Name = "tms-wordpress-front-tepmlate"
  }

  vpc_id  = "${var.vpc_id}"
  subnet_id = "${var.subnet_id}"
  security_group_id = "${var.sg_allow_ssh_from_bastion}"
  ssh_bastion_host = "${var.ssh_bastion_host}"
  ssh_bastion_username = "ubuntu"
  ssh_bastion_private_key_file = "/mnt/c/Users/Admin/.ssh/test-bastion-key-pair.pem"
  ssh_username = "ubuntu"

  source_ami_filter {
    filters = {
      name                = "ubuntu/images/*ubuntu-focal-20.04-amd64-server*"
      root-device-type    = "ebs"
      virtualization-type = "hvm"
    }
    most_recent = true
    owners      = ["099720109477"]
  }
}

build {
    sources = [
        "source.amazon-ebs.ubuntu"
    ]

    provisioner "ansible" {
        playbook_file = "../../ansible/playbooks/wp_front.yaml"
        extra_arguments = ["--extra-vars", "nginx_wordpress_conf_wordpress_back_lb_url=${var.nginx_wordpress_conf_wordpress_back_lb_url}", "-vvv"]
    }
}
