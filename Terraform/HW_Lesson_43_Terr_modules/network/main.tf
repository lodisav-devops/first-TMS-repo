data "aws_availability_zones" "available" {
  state = "available"
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${var.vpc_name}"
  cidr = "${var.vpc_cidr_block}"
  azs = data.aws_availability_zones.available.zone_ids
  public_subnets = "${var.vpc_public_subnets}"
  private_subnets = "${var.vpc_private_subnets}"
  enable_nat_gateway = "${var.default_enable_nat_gateway}"
  single_nat_gateway = "${var.default_single_nat_gateway}"  
  tags = merge(var.vpc_common_tags, { Environment = "${terraform.workspace}" })
}
