lodis@My-PC:/mnt/d/first-TMS-repo/Terraform/HW_Lesson_44_Terr_Wordpress/network$ terraform workspace list
* default

lodis@My-PC:/mnt/d/first-TMS-repo/Terraform/HW_Lesson_44_Terr_Wordpress/network$ terraform workspace new prod
Created and switched to workspace "prod"!

You're now on a new, empty workspace. Workspaces isolate their state,
so if you run "terraform plan" Terraform will not see any existing state
for this configuration.
lodis@My-PC:/mnt/d/first-TMS-repo/Terraform/HW_Lesson_44_Terr_Wordpress/network$ terraform workspace new dev
Created and switched to workspace "dev"!

You're now on a new, empty workspace. Workspaces isolate their state,
so if you run "terraform plan" Terraform will not see any existing state
for this configuration.
lodis@My-PC:/mnt/d/first-TMS-repo/Terraform/HW_Lesson_44_Terr_Wordpress/network$ terraform workspace list
  default
* dev
  prod

lodis@My-PC:/mnt/d/first-TMS-repo/Terraform/HW_Lesson_44_Terr_Wordpress/network$ terraform apply
data.aws_availability_zones.available: Reading...
data.aws_availability_zones.available: Read complete after 1s [id=eu-west-1]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following
symbols:
  + create

Terraform will perform the following actions:

  # module.vpc.aws_eip.nat[0] will be created
  + resource "aws_eip" "nat" {
      + allocation_id        = (known after apply)
      + association_id       = (known after apply)
      + carrier_ip           = (known after apply)
      + customer_owned_ip    = (known after apply)
      + domain               = (known after apply)
      + id                   = (known after apply)
      + instance             = (known after apply)
      + network_border_group = (known after apply)
      + network_interface    = (known after apply)
      + private_dns          = (known after apply)
      + private_ip           = (known after apply)
      + public_dns           = (known after apply)
      + public_ip            = (known after apply)
      + public_ipv4_pool     = (known after apply)
      + tags                 = {
          + "Name" = "dos11-dev-eu-west-1a"
        }
      + tags_all             = {
          + "Environment" = "dev"
          + "Name"        = "dos11-dev-eu-west-1a"
          + "Project"     = "tms-wordpress"
          + "Terraform"   = "true"
        }
      + vpc                  = true
    }

  # module.vpc.aws_internet_gateway.this[0] will be created
  + resource "aws_internet_gateway" "this" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Name" = "dos11-dev"
        }
      + tags_all = {
          + "Environment" = "dev"
          + "Name"        = "dos11-dev"
          + "Project"     = "tms-wordpress"
          + "Terraform"   = "true"
        }
      + vpc_id   = (known after apply)
    }

  # module.vpc.aws_nat_gateway.this[0] will be created
  + resource "aws_nat_gateway" "this" {
      + allocation_id        = (known after apply)
      + connectivity_type    = "public"
      + id                   = (known after apply)
      + network_interface_id = (known after apply)
      + private_ip           = (known after apply)
      + public_ip            = (known after apply)
      + subnet_id            = (known after apply)
      + tags                 = {
          + "Name" = "dos11-dev-eu-west-1a"
        }
      + tags_all             = {
          + "Environment" = "dev"
          + "Name"        = "dos11-dev-eu-west-1a"
          + "Project"     = "tms-wordpress"
          + "Terraform"   = "true"
        }
    }

  # module.vpc.aws_route.private_nat_gateway[0] will be created
  + resource "aws_route" "private_nat_gateway" {
      + destination_cidr_block = "0.0.0.0/0"
      + id                     = (known after apply)
      + instance_id            = (known after apply)
      + instance_owner_id      = (known after apply)
      + nat_gateway_id         = (known after apply)
      + network_interface_id   = (known after apply)
      + origin                 = (known after apply)
      + route_table_id         = (known after apply)
      + state                  = (known after apply)

      + timeouts {
          + create = "5m"
        }
    }

  # module.vpc.aws_route.public_internet_gateway[0] will be created
  + resource "aws_route" "public_internet_gateway" {
      + destination_cidr_block = "0.0.0.0/0"
      + gateway_id             = (known after apply)
      + id                     = (known after apply)
      + instance_id            = (known after apply)
      + instance_owner_id      = (known after apply)
      + network_interface_id   = (known after apply)
      + origin                 = (known after apply)
      + route_table_id         = (known after apply)
      + state                  = (known after apply)

      + timeouts {
          + create = "5m"
        }
    }

  # module.vpc.aws_route_table.private[0] will be created
  + resource "aws_route_table" "private" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Name" = "dos11-dev-private"
        }
      + tags_all         = {
          + "Environment" = "dev"
          + "Name"        = "dos11-dev-private"
          + "Project"     = "tms-wordpress"
          + "Terraform"   = "true"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table.public[0] will be created
  + resource "aws_route_table" "public" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Name" = "dos11-dev-public"
        }
      + tags_all         = {
          + "Environment" = "dev"
          + "Name"        = "dos11-dev-public"
          + "Project"     = "tms-wordpress"
          + "Terraform"   = "true"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table_association.private[0] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.private[1] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.private[2] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.public[0] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.public[1] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.public[2] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_subnet.private[0] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "eu-west-1a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.96.0/19"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "dos11-dev-private-eu-west-1a"
        }
      + tags_all                                       = {
          + "Environment" = "dev"
          + "Name"        = "dos11-dev-private-eu-west-1a"
          + "Project"     = "tms-wordpress"
          + "Terraform"   = "true"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.private[1] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "eu-west-1b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.128.0/19"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "dos11-dev-private-eu-west-1b"
        }
      + tags_all                                       = {
          + "Environment" = "dev"
          + "Name"        = "dos11-dev-private-eu-west-1b"
          + "Project"     = "tms-wordpress"
          + "Terraform"   = "true"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.private[2] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "eu-west-1c"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.160.0/19"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "dos11-dev-private-eu-west-1c"
        }
      + tags_all                                       = {
          + "Environment" = "dev"
          + "Name"        = "dos11-dev-private-eu-west-1c"
          + "Project"     = "tms-wordpress"
          + "Terraform"   = "true"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.public[0] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "eu-west-1a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.0.0/19"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = true
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "dos11-dev-public-eu-west-1a"
        }
      + tags_all                                       = {
          + "Environment" = "dev"
          + "Name"        = "dos11-dev-public-eu-west-1a"
          + "Project"     = "tms-wordpress"
          + "Terraform"   = "true"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.public[1] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "eu-west-1b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.32.0/19"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = true
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "dos11-dev-public-eu-west-1b"
        }
      + tags_all                                       = {
          + "Environment" = "dev"
          + "Name"        = "dos11-dev-public-eu-west-1b"
          + "Project"     = "tms-wordpress"
          + "Terraform"   = "true"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.public[2] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "eu-west-1c"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.64.0/19"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = true
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "dos11-dev-public-eu-west-1c"
        }
      + tags_all                                       = {
          + "Environment" = "dev"
          + "Name"        = "dos11-dev-public-eu-west-1c"
          + "Project"     = "tms-wordpress"
          + "Terraform"   = "true"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_vpc.this[0] will be created
  + resource "aws_vpc" "this" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.0.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_classiclink                   = (known after apply)
      + enable_classiclink_dns_support       = (known after apply)
      + enable_dns_hostnames                 = true
      + enable_dns_support                   = true
      + enable_network_address_usage_metrics = (known after apply)
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags                                 = {
          + "Name" = "dos11-dev"
        }
      + tags_all                             = {
          + "Environment" = "dev"
          + "Name"        = "dos11-dev"
          + "Project"     = "tms-wordpress"
          + "Terraform"   = "true"
        }
    }

Plan: 20 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + private_subnets     = [
      + (known after apply),
      + (known after apply),
      + (known after apply),
    ]
  + public_subnets      = [
      + (known after apply),
      + (known after apply),
      + (known after apply),
    ]
  + subnets_cidr_blocks = {
      + private = [
          + "10.0.96.0/19",
          + "10.0.128.0/19",
          + "10.0.160.0/19",
        ]
      + public  = [
          + "10.0.0.0/19",
          + "10.0.32.0/19",
          + "10.0.64.0/19",
        ]
    }
  + vpc_id              = (known after apply)

Do you want to perform these actions in workspace "dev"?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

module.vpc.aws_eip.nat[0]: Creating...
module.vpc.aws_vpc.this[0]: Creating...
module.vpc.aws_eip.nat[0]: Creation complete after 1s [id=eipalloc-0dd9991f5a049171e]
module.vpc.aws_vpc.this[0]: Still creating... [10s elapsed]
module.vpc.aws_vpc.this[0]: Creation complete after 12s [id=vpc-08160593a0e351010]
module.vpc.aws_subnet.private[1]: Creating...
module.vpc.aws_subnet.private[0]: Creating...
module.vpc.aws_internet_gateway.this[0]: Creating...
module.vpc.aws_subnet.private[2]: Creating...
module.vpc.aws_route_table.private[0]: Creating...
module.vpc.aws_subnet.public[2]: Creating...
module.vpc.aws_subnet.public[1]: Creating...
module.vpc.aws_subnet.public[0]: Creating...
module.vpc.aws_route_table.public[0]: Creating...
module.vpc.aws_subnet.private[0]: Creation complete after 1s [id=subnet-0f14c3be6ff0fba6e]
module.vpc.aws_subnet.private[1]: Creation complete after 1s [id=subnet-0abbe90f959ea5def]
module.vpc.aws_subnet.private[2]: Creation complete after 1s [id=subnet-091989a60bb6c1a37]
module.vpc.aws_internet_gateway.this[0]: Creation complete after 1s [id=igw-006457becf2f17bfd]
module.vpc.aws_route_table.private[0]: Creation complete after 1s [id=rtb-09a45e89dd0f5ef4b]
module.vpc.aws_route_table.public[0]: Creation complete after 1s [id=rtb-0750b6bc4193ebddc]
module.vpc.aws_route_table_association.private[0]: Creating...
module.vpc.aws_route_table_association.private[1]: Creating...
module.vpc.aws_route_table_association.private[2]: Creating...
module.vpc.aws_route.public_internet_gateway[0]: Creating...
module.vpc.aws_route_table_association.private[1]: Creation complete after 1s [id=rtbassoc-094ec0a2e05388a05]
module.vpc.aws_route_table_association.private[0]: Creation complete after 1s [id=rtbassoc-044a27b4a2db49709]
module.vpc.aws_route_table_association.private[2]: Creation complete after 1s [id=rtbassoc-03e45ce4234d7d5e6]
module.vpc.aws_route.public_internet_gateway[0]: Creation complete after 1s [id=r-rtb-0750b6bc4193ebddc1080289494]
module.vpc.aws_subnet.public[2]: Still creating... [10s elapsed]
module.vpc.aws_subnet.public[1]: Still creating... [10s elapsed]
module.vpc.aws_subnet.public[0]: Still creating... [10s elapsed]
module.vpc.aws_subnet.public[0]: Creation complete after 11s [id=subnet-043a2e54828f116f5]
module.vpc.aws_subnet.public[2]: Creation complete after 12s [id=subnet-055a4d80b881fe5e6]
module.vpc.aws_subnet.public[1]: Creation complete after 12s [id=subnet-0f385a341a13bc4ee]
module.vpc.aws_route_table_association.public[1]: Creating...
module.vpc.aws_route_table_association.public[0]: Creating...
module.vpc.aws_nat_gateway.this[0]: Creating...
module.vpc.aws_route_table_association.public[2]: Creating...
module.vpc.aws_route_table_association.public[2]: Creation complete after 0s [id=rtbassoc-0b467bb92e53eb7d7]
module.vpc.aws_route_table_association.public[1]: Creation complete after 0s [id=rtbassoc-00ecd766ac9d9cc12]
module.vpc.aws_route_table_association.public[0]: Creation complete after 0s [id=rtbassoc-0b10b99dbd29938ef]
module.vpc.aws_nat_gateway.this[0]: Still creating... [10s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [20s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [30s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [40s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [50s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [1m0s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [1m10s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [1m20s elapsed]
module.vpc.aws_nat_gateway.this[0]: Creation complete after 1m24s [id=nat-04a824d6e78be0939]
module.vpc.aws_route.private_nat_gateway[0]: Creating...
module.vpc.aws_route.private_nat_gateway[0]: Creation complete after 1s [id=r-rtb-09a45e89dd0f5ef4b1080289494]

Apply complete! Resources: 20 added, 0 changed, 0 destroyed.

Outputs:

private_subnets = [
  "subnet-0f14c3be6ff0fba6e",
  "subnet-0abbe90f959ea5def",
  "subnet-091989a60bb6c1a37",
]
public_subnets = [
  "subnet-043a2e54828f116f5",
  "subnet-0f385a341a13bc4ee",
  "subnet-055a4d80b881fe5e6",
]
subnets_cidr_blocks = {
  "private" = [
    "10.0.96.0/19",
    "10.0.128.0/19",
    "10.0.160.0/19",
  ]
  "public" = [
    "10.0.0.0/19",
    "10.0.32.0/19",
    "10.0.64.0/19",
  ]
}
vpc_id = "vpc-08160593a0e351010"
lodis@My-PC:/mnt/d/first-TMS-repo/Terraform/HW_Lesson_44_Terr_Wordpress/network$
