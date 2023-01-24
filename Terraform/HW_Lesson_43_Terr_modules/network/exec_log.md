PS D:\first-TMS-repo\Terraform\HW_Lesson_43_Terr_modules\network> terraform workspace list
* default
PS D:\first-TMS-repo\Terraform\HW_Lesson_43_Terr_modules\network> terraform workspace new prod
Created and switched to workspace "prod"!

You're now on a new, empty workspace. Workspaces isolate their state,
so if you run "terraform plan" Terraform will not see any existing state
for this configuration.
PS D:\first-TMS-repo\Terraform\HW_Lesson_43_Terr_modules\network> terraform workspace new dev
Created and switched to workspace "dev"!

You're now on a new, empty workspace. Workspaces isolate their state,
so if you run "terraform plan" Terraform will not see any existing state
for this configuration.
PS D:\first-TMS-repo\Terraform\HW_Lesson_43_Terr_modules\network> terraform workspace list
  default
* dev
  prod

PS D:\first-TMS-repo\Terraform\HW_Lesson_43_Terr_modules\network> terraform apply
data.aws_availability_zones.available: Reading...
data.aws_availability_zones.available: Read complete after 2s [id=eu-west-1]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
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
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la-euw1-az2"
          + "Owner"       = "Lodis Artyom"
        }
      + tags_all             = {
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la-euw1-az2"
          + "Owner"       = "Lodis Artyom"
        }
      + vpc                  = true
    }

  # module.vpc.aws_internet_gateway.this[0] will be created
  + resource "aws_internet_gateway" "this" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la"
          + "Owner"       = "Lodis Artyom"
        }
      + tags_all = {
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la"
          + "Owner"       = "Lodis Artyom"
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
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la-euw1-az2"
          + "Owner"       = "Lodis Artyom"
        }
      + tags_all             = {
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la-euw1-az2"
          + "Owner"       = "Lodis Artyom"
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
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la-private"
          + "Owner"       = "Lodis Artyom"
        }
      + tags_all         = {
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la-private"
          + "Owner"       = "Lodis Artyom"
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
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la-public"
          + "Owner"       = "Lodis Artyom"
        }
      + tags_all         = {
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la-public"
          + "Owner"       = "Lodis Artyom"
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

  # module.vpc.aws_route_table_association.private[3] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.private[4] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.private[5] will be created
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
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = "euw1-az2"
      + cidr_block                                     = "10.33.21.0/24"
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
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la-private-euw1-az2"
          + "Owner"       = "Lodis Artyom"
        }
      + tags_all                                       = {
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la-private-euw1-az2"
          + "Owner"       = "Lodis Artyom"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.private[1] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = "euw1-az3"
      + cidr_block                                     = "10.33.22.0/24"
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
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la-private-euw1-az3"
          + "Owner"       = "Lodis Artyom"
        }
      + tags_all                                       = {
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la-private-euw1-az3"
          + "Owner"       = "Lodis Artyom"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.private[2] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = "euw1-az1"
      + cidr_block                                     = "10.33.23.0/24"
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
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la-private-euw1-az1"
          + "Owner"       = "Lodis Artyom"
        }
      + tags_all                                       = {
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la-private-euw1-az1"
          + "Owner"       = "Lodis Artyom"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.private[3] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = "euw1-az2"
      + cidr_block                                     = "10.33.81.0/24"
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
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la-private-euw1-az2"
          + "Owner"       = "Lodis Artyom"
        }
      + tags_all                                       = {
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la-private-euw1-az2"
          + "Owner"       = "Lodis Artyom"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.private[4] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = "euw1-az3"
      + cidr_block                                     = "10.33.82.0/24"
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
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la-private-euw1-az3"
          + "Owner"       = "Lodis Artyom"
        }
      + tags_all                                       = {
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la-private-euw1-az3"
          + "Owner"       = "Lodis Artyom"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.private[5] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = "euw1-az1"
      + cidr_block                                     = "10.33.83.0/24"
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
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la-private-euw1-az1"
          + "Owner"       = "Lodis Artyom"
        }
      + tags_all                                       = {
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la-private-euw1-az1"
          + "Owner"       = "Lodis Artyom"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.public[0] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = "euw1-az2"
      + cidr_block                                     = "10.33.11.0/24"
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
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la-public-euw1-az2"
          + "Owner"       = "Lodis Artyom"
        }
      + tags_all                                       = {
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la-public-euw1-az2"
          + "Owner"       = "Lodis Artyom"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.public[1] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = "euw1-az3"
      + cidr_block                                     = "10.33.12.0/24"
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
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la-public-euw1-az3"
          + "Owner"       = "Lodis Artyom"
        }
      + tags_all                                       = {
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la-public-euw1-az3"
          + "Owner"       = "Lodis Artyom"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.public[2] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = "euw1-az1"
      + cidr_block                                     = "10.33.13.0/24"
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
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la-public-euw1-az1"
          + "Owner"       = "Lodis Artyom"
        }
      + tags_all                                       = {
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la-public-euw1-az1"
          + "Owner"       = "Lodis Artyom"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_vpc.this[0] will be created
  + resource "aws_vpc" "this" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.33.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_classiclink                   = (known after apply)
      + enable_classiclink_dns_support       = (known after apply)
      + enable_dns_hostnames                 = false
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
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la"
          + "Owner"       = "Lodis Artyom"
        }
      + tags_all                             = {
          + "Environment" = "dev"
          + "Name"        = "vpc-dos11-la"
          + "Owner"       = "Lodis Artyom"
        }
    }

Plan: 26 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + az_zones_ids                 = [
      + "euw1-az2",
      + "euw1-az3",
      + "euw1-az1",
    ]
  + my_vpc_id                    = (known after apply)
  + vpc_database_route_table_ids = (known after apply)
  + vpc_subnets_private          = [
      + (known after apply),
      + (known after apply),
      + (known after apply),
      + (known after apply),
      + (known after apply),
      + (known after apply),
    ]
  + vpc_subnets_public           = [
      + (known after apply),
      + (known after apply),
      + (known after apply),
    ]

Do you want to perform these actions in workspace "dev"?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

module.vpc.aws_vpc.this[0]: Creating...
module.vpc.aws_eip.nat[0]: Creating...
module.vpc.aws_eip.nat[0]: Creation complete after 2s [id=eipalloc-0e11768dfdce26f75]
module.vpc.aws_vpc.this[0]: Creation complete after 4s [id=vpc-017f499a91c4842bf]
module.vpc.aws_route_table.public[0]: Creating...
module.vpc.aws_subnet.private[3]: Creating...
module.vpc.aws_subnet.public[1]: Creating...
module.vpc.aws_route_table.private[0]: Creating...
module.vpc.aws_subnet.public[0]: Creating...
module.vpc.aws_subnet.private[0]: Creating...
module.vpc.aws_internet_gateway.this[0]: Creating...
module.vpc.aws_subnet.private[4]: Creating...
module.vpc.aws_subnet.public[2]: Creating...
module.vpc.aws_subnet.private[1]: Creating...
module.vpc.aws_route_table.public[0]: Creation complete after 1s [id=rtb-0fc0947a15ac4843a]
module.vpc.aws_subnet.private[3]: Creation complete after 1s [id=subnet-0fc40280f5f48f4c0]
module.vpc.aws_subnet.private[2]: Creating...
module.vpc.aws_subnet.private[5]: Creating...
module.vpc.aws_route_table.private[0]: Creation complete after 1s [id=rtb-03591c50a57a5144d]
module.vpc.aws_internet_gateway.this[0]: Creation complete after 1s [id=igw-06c26b83477fd1514]
module.vpc.aws_route.public_internet_gateway[0]: Creating...
module.vpc.aws_subnet.private[0]: Creation complete after 1s [id=subnet-0ef83e9594b74115d]
module.vpc.aws_subnet.private[4]: Creation complete after 2s [id=subnet-0306f5282faf08c27]
module.vpc.aws_subnet.private[1]: Creation complete after 2s [id=subnet-07506ec36fb5598be]
module.vpc.aws_subnet.private[2]: Creation complete after 1s [id=subnet-0f4eee9231a8277bb]
module.vpc.aws_subnet.private[5]: Creation complete after 1s [id=subnet-08a53c81aa7389fe9]
module.vpc.aws_route_table_association.private[4]: Creating...
module.vpc.aws_route_table_association.private[1]: Creating...
module.vpc.aws_route_table_association.private[0]: Creating...
module.vpc.aws_route_table_association.private[3]: Creating...
module.vpc.aws_route_table_association.private[5]: Creating...
module.vpc.aws_route_table_association.private[2]: Creating...
module.vpc.aws_route.public_internet_gateway[0]: Creation complete after 1s [id=r-rtb-0fc0947a15ac4843a1080289494]
module.vpc.aws_route_table_association.private[1]: Creation complete after 1s [id=rtbassoc-03dbd32325c706562]
module.vpc.aws_route_table_association.private[4]: Creation complete after 1s [id=rtbassoc-0eff7a70107afb280]
module.vpc.aws_route_table_association.private[3]: Creation complete after 1s [id=rtbassoc-063f6fee48c17c6f1]
module.vpc.aws_route_table_association.private[0]: Creation complete after 1s [id=rtbassoc-07d5c4ec6177e9c2e]
module.vpc.aws_route_table_association.private[5]: Creation complete after 1s [id=rtbassoc-029ed3e9408c1f29e]
module.vpc.aws_route_table_association.private[2]: Creation complete after 1s [id=rtbassoc-0593bd676a5854a50]
module.vpc.aws_subnet.public[1]: Still creating... [10s elapsed]
module.vpc.aws_subnet.public[0]: Still creating... [10s elapsed]
module.vpc.aws_subnet.public[2]: Still creating... [10s elapsed]
module.vpc.aws_subnet.public[1]: Creation complete after 12s [id=subnet-097993c64741a3d12]
module.vpc.aws_subnet.public[2]: Creation complete after 12s [id=subnet-0faa152827dc74d3e]
module.vpc.aws_subnet.public[0]: Creation complete after 12s [id=subnet-0bbc73e9ed09a3faa]
module.vpc.aws_route_table_association.public[1]: Creating...
module.vpc.aws_route_table_association.public[0]: Creating...
module.vpc.aws_route_table_association.public[2]: Creating...
module.vpc.aws_nat_gateway.this[0]: Creating...
module.vpc.aws_route_table_association.public[2]: Creation complete after 1s [id=rtbassoc-0abfa50d5aac2693c]
module.vpc.aws_route_table_association.public[1]: Creation complete after 1s [id=rtbassoc-048e641526d947710]
module.vpc.aws_route_table_association.public[0]: Creation complete after 1s [id=rtbassoc-0a04a2dad59da8a00]
module.vpc.aws_nat_gateway.this[0]: Still creating... [10s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [20s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [30s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [40s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [50s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [1m0s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [1m10s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [1m20s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [1m30s elapsed]
module.vpc.aws_nat_gateway.this[0]: Still creating... [1m40s elapsed]
module.vpc.aws_nat_gateway.this[0]: Creation complete after 1m47s [id=nat-0fa3124da0a22fdff]
module.vpc.aws_route.private_nat_gateway[0]: Creating...
module.vpc.aws_route.private_nat_gateway[0]: Creation complete after 1s [id=r-rtb-03591c50a57a5144d1080289494]

Apply complete! Resources: 26 added, 0 changed, 0 destroyed.

Outputs:

az_zones_ids = tolist([
  "euw1-az2",
  "euw1-az3",
  "euw1-az1",
])
my_vpc_id = "vpc-017f499a91c4842bf"
vpc_database_route_table_ids = [
  "rtb-03591c50a57a5144d",
]
vpc_subnets_private = [
  "subnet-0ef83e9594b74115d",
  "subnet-07506ec36fb5598be",
  "subnet-0f4eee9231a8277bb",
  "subnet-0fc40280f5f48f4c0",
  "subnet-0306f5282faf08c27",
  "subnet-08a53c81aa7389fe9",
]
vpc_subnets_public = [
  "subnet-0bbc73e9ed09a3faa",
  "subnet-097993c64741a3d12",
  "subnet-0faa152827dc74d3e",
]
PS D:\first-TMS-repo\Terraform\HW_Lesson_43_Terr_modules\network>
