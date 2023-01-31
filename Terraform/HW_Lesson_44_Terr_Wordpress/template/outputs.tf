output "sec_group_for_ssh" {
  value = data.aws_security_group.ssh_from_bastion.id
}
