output "latest_amazon_linux_ami_id" {
  value = data.aws_ami.amazon_linux_ami_latest.id
}

output "latest_amazon_linux_ami_name" {
  value = data.aws_ami.amazon_linux_ami_latest.name
}

output "vpc_id" {
  value = data.aws_vpc.def_vpc.id
}

output "vpc_cidr" {
  value = data.aws_vpc.def_vpc.cidr_block
}

data "aws_subnets" "default_subnets" {
  filter {
    name   = "vpc-id"
    values = [ data.aws_vpc.def_vpc.id ]
  }
}

output "vpc_subnets" {
  value = data.aws_subnets.default_subnets.ids
}

data "aws_subnet" "default_subnet_1" {
  id = "subnet-093b539ea9689e8c0"
}

output "cidr_default_subnet_1" {
  value = data.aws_subnet.default_subnet_1.cidr_block
}

data "aws_subnet" "default_subnet_2" {
  id = "subnet-0affb800232bb18ca"
}

output "cidr_default_subnet_2" {
  value = data.aws_subnet.default_subnet_2.cidr_block
}

data "aws_subnet" "default_subnet_3" {
  id = "subnet-0d1454afe4297ec32"
}

output "cidr_default_subnet_3" {
  value = data.aws_subnet.default_subnet_3.cidr_block
}
