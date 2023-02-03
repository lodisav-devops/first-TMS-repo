output "sec_group_for_ssh" {
  value = data.aws_security_group.ssh_from_bastion.id
}

output "ami_front" {
  value = data.aws_ami.frontend.id
}

output "ami_back" {
  value = data.aws_ami.backend.id
}
