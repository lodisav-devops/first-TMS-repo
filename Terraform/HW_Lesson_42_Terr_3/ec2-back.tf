resource "aws_instance" "ec2_backend" {
  count = "${var.count_of_ec2_instance_backend}"
  ami = data.aws_ami.amazon_linux_ami_latest.id
  instance_type = "${var.ec2_instance_type}"
  key_name = "${var.key_name_ec2_backend}"
  subnet_id = aws_subnet.subnet_backend.id
  vpc_security_group_ids = [ aws_security_group.sg_backend.id ]
  tags = {
    "Name" = "Backend Instance"
    "Owner" = "Lodis Artyom"
  }
}
