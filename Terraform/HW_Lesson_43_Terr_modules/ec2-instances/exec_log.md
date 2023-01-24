PS D:\first-TMS-repo\Terraform\HW_Lesson_43_Terr_modules\ec2-instances> terraform workspace list
* default

PS D:\first-TMS-repo\Terraform\HW_Lesson_43_Terr_modules\ec2-instances> terraform workspace new dev
Created and switched to workspace "dev"!

You're now on a new, empty workspace. Workspaces isolate their state,
so if you run "terraform plan" Terraform will not see any existing state
for this configuration.
PS D:\first-TMS-repo\Terraform\HW_Lesson_43_Terr_modules\ec2-instances> terraform workspace new prod
Created and switched to workspace "prod"!

You're now on a new, empty workspace. Workspaces isolate their state,
so if you run "terraform plan" Terraform will not see any existing state
for this configuration.
PS D:\first-TMS-repo\Terraform\HW_Lesson_43_Terr_modules\ec2-instances> terraform workspace list
  default
  dev
* prod

PS D:\first-TMS-repo\Terraform\HW_Lesson_43_Terr_modules\ec2-instances> terraform workspace select dev
Switched to workspace "dev".
PS D:\first-TMS-repo\Terraform\HW_Lesson_43_Terr_modules\ec2-instances> terraform workspace list
  default
* dev
  prod

PS D:\first-TMS-repo\Terraform\HW_Lesson_43_Terr_modules\ec2-instances> terraform apply
data.terraform_remote_state.network: Reading...
data.terraform_remote_state.network: Read complete after 0s
data.aws_ami.ubuntu_22_ami_latest: Reading...
data.aws_ami.ubuntu_22_ami_latest: Read complete after 1s [id=ami-0333305f9719618c7]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with
the following symbols:
  + create
 <= read (data resources)

Terraform will perform the following actions:

  # data.aws_instance.back_ip will be read during apply
  # (depends on a resource or a module with changes pending)
 <= data "aws_instance" "back_ip" {
      + ami                         = (known after apply)
      + arn                         = (known after apply)
      + associate_public_ip_address = (known after apply)
      + availability_zone           = (known after apply)
      + credit_specification        = (known after apply)
      + disable_api_stop            = (known after apply)
      + disable_api_termination     = (known after apply)
      + ebs_block_device            = (known after apply)
      + ebs_optimized               = (known after apply)
      + enclave_options             = (known after apply)
      + ephemeral_block_device      = (known after apply)
      + host_id                     = (known after apply)
      + host_resource_group_arn     = (known after apply)
      + iam_instance_profile        = (known after apply)
      + id                          = (known after apply)
      + instance_state              = (known after apply)
      + instance_tags               = (known after apply)
      + instance_type               = (known after apply)
      + ipv6_addresses              = (known after apply)
      + key_name                    = (known after apply)
      + maintenance_options         = (known after apply)
      + metadata_options            = (known after apply)
      + monitoring                  = (known after apply)
      + network_interface_id        = (known after apply)
      + outpost_arn                 = (known after apply)
      + password_data               = (known after apply)
      + placement_group             = (known after apply)
      + placement_partition_number  = (known after apply)
      + private_dns                 = (known after apply)
      + private_dns_name_options    = (known after apply)
      + private_ip                  = (known after apply)
      + public_dns                  = (known after apply)
      + public_ip                   = (known after apply)
      + root_block_device           = (known after apply)
      + secondary_private_ips       = (known after apply)
      + security_groups             = (known after apply)
      + source_dest_check           = (known after apply)
      + subnet_id                   = (known after apply)
      + tags                        = (known after apply)
      + tenancy                     = (known after apply)
      + user_data                   = (known after apply)
      + user_data_base64            = (known after apply)
      + vpc_security_group_ids      = (known after apply)

      + filter {
          + name   = "instance-state-name"
          + values = [
              + "running",
            ]
        }
      + filter {
          + name   = "tag:Name"
          + values = [
              + "Backend Instance",
            ]
        }

      + timeouts {
          + read = (known after apply)
        }
    }

  # data.aws_instance.front_ip will be read during apply
  # (depends on a resource or a module with changes pending)
 <= data "aws_instance" "front_ip" {
      + ami                         = (known after apply)
      + arn                         = (known after apply)
      + associate_public_ip_address = (known after apply)
      + availability_zone           = (known after apply)
      + credit_specification        = (known after apply)
      + disable_api_stop            = (known after apply)
      + disable_api_termination     = (known after apply)
      + ebs_block_device            = (known after apply)
      + ebs_optimized               = (known after apply)
      + enclave_options             = (known after apply)
      + ephemeral_block_device      = (known after apply)
      + host_id                     = (known after apply)
      + host_resource_group_arn     = (known after apply)
      + iam_instance_profile        = (known after apply)
      + id                          = (known after apply)
      + instance_state              = (known after apply)
      + instance_tags               = (known after apply)
      + instance_type               = (known after apply)
      + ipv6_addresses              = (known after apply)
      + key_name                    = (known after apply)
      + maintenance_options         = (known after apply)
      + metadata_options            = (known after apply)
      + monitoring                  = (known after apply)
      + network_interface_id        = (known after apply)
      + outpost_arn                 = (known after apply)
      + password_data               = (known after apply)
      + placement_group             = (known after apply)
      + placement_partition_number  = (known after apply)
      + private_dns                 = (known after apply)
      + private_dns_name_options    = (known after apply)
      + private_ip                  = (known after apply)
      + public_dns                  = (known after apply)
      + public_ip                   = (known after apply)
      + root_block_device           = (known after apply)
      + secondary_private_ips       = (known after apply)
      + security_groups             = (known after apply)
      + source_dest_check           = (known after apply)
      + subnet_id                   = (known after apply)
      + tags                        = (known after apply)
      + tenancy                     = (known after apply)
      + user_data                   = (known after apply)
      + user_data_base64            = (known after apply)
      + vpc_security_group_ids      = (known after apply)

      + filter {
          + name   = "instance-state-name"
          + values = [
              + "running",
            ]
        }
      + filter {
          + name   = "tag:Name"
          + values = [
              + "Frontend Instance",
            ]
        }

      + timeouts {
          + read = (known after apply)
        }
    }

  # aws_instance.ec2_backend will be created
  + resource "aws_instance" "ec2_backend" {
      + ami                                  = "ami-0333305f9719618c7"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = "test-backend-key-pair"
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + subnet_id                            = "subnet-07506ec36fb5598be"
      + tags                                 = {
          + "Environment" = "dev"
          + "Name"        = "Backend Instance"
          + "Owner"       = "Lodis Artyom"
        }
      + tags_all                             = {
          + "Environment" = "dev"
          + "Name"        = "Backend Instance"
          + "Owner"       = "Lodis Artyom"
        }
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification {
          + capacity_reservation_preference = (known after apply)

          + capacity_reservation_target {
              + capacity_reservation_id                 = (known after apply)
              + capacity_reservation_resource_group_arn = (known after apply)
            }
        }

      + ebs_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + snapshot_id           = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }

      + enclave_options {
          + enabled = (known after apply)
        }

      + ephemeral_block_device {
          + device_name  = (known after apply)
          + no_device    = (known after apply)
          + virtual_name = (known after apply)
        }

      + maintenance_options {
          + auto_recovery = (known after apply)
        }

      + metadata_options {
          + http_endpoint               = (known after apply)
          + http_put_response_hop_limit = (known after apply)
          + http_tokens                 = (known after apply)
          + instance_metadata_tags      = (known after apply)
        }

      + network_interface {
          + delete_on_termination = (known after apply)
          + device_index          = (known after apply)
          + network_card_index    = (known after apply)
          + network_interface_id  = (known after apply)
        }

      + private_dns_name_options {
          + enable_resource_name_dns_a_record    = (known after apply)
          + enable_resource_name_dns_aaaa_record = (known after apply)
          + hostname_type                        = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

  # aws_instance.ec2_database will be created
  + resource "aws_instance" "ec2_database" {
      + ami                                  = "ami-0333305f9719618c7"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = "test-database-key-pair"
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + subnet_id                            = "subnet-0306f5282faf08c27"
      + tags                                 = {
          + "Environment" = "dev"
          + "Name"        = "Database Instance"
          + "Owner"       = "Lodis Artyom"
        }
      + tags_all                             = {
          + "Environment" = "dev"
          + "Name"        = "Database Instance"
          + "Owner"       = "Lodis Artyom"
        }
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification {
          + capacity_reservation_preference = (known after apply)

          + capacity_reservation_target {
              + capacity_reservation_id                 = (known after apply)
              + capacity_reservation_resource_group_arn = (known after apply)
            }
        }

      + ebs_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + snapshot_id           = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }

      + enclave_options {
          + enabled = (known after apply)
        }

      + ephemeral_block_device {
          + device_name  = (known after apply)
          + no_device    = (known after apply)
          + virtual_name = (known after apply)
        }

      + maintenance_options {
          + auto_recovery = (known after apply)
        }

      + metadata_options {
          + http_endpoint               = (known after apply)
          + http_put_response_hop_limit = (known after apply)
          + http_tokens                 = (known after apply)
          + instance_metadata_tags      = (known after apply)
        }

      + network_interface {
          + delete_on_termination = (known after apply)
          + device_index          = (known after apply)
          + network_card_index    = (known after apply)
          + network_interface_id  = (known after apply)
        }

      + private_dns_name_options {
          + enable_resource_name_dns_a_record    = (known after apply)
          + enable_resource_name_dns_aaaa_record = (known after apply)
          + hostname_type                        = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

  # aws_instance.ec2_frontend will be created
  + resource "aws_instance" "ec2_frontend" {
      + ami                                  = "ami-0333305f9719618c7"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = "test-frontend-key-pair"
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + subnet_id                            = "subnet-097993c64741a3d12"
      + tags                                 = {
          + "Environment" = "dev"
          + "Name"        = "Frontend Instance"
          + "Owner"       = "Lodis Artyom"
        }
      + tags_all                             = {
          + "Environment" = "dev"
          + "Name"        = "Frontend Instance"
          + "Owner"       = "Lodis Artyom"
        }
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification {
          + capacity_reservation_preference = (known after apply)

          + capacity_reservation_target {
              + capacity_reservation_id                 = (known after apply)
              + capacity_reservation_resource_group_arn = (known after apply)
            }
        }

      + ebs_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + snapshot_id           = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }

      + enclave_options {
          + enabled = (known after apply)
        }

      + ephemeral_block_device {
          + device_name  = (known after apply)
          + no_device    = (known after apply)
          + virtual_name = (known after apply)
        }

      + maintenance_options {
          + auto_recovery = (known after apply)
        }

      + metadata_options {
          + http_endpoint               = (known after apply)
          + http_put_response_hop_limit = (known after apply)
          + http_tokens                 = (known after apply)
          + instance_metadata_tags      = (known after apply)
        }

      + network_interface {
          + delete_on_termination = (known after apply)
          + device_index          = (known after apply)
          + network_card_index    = (known after apply)
          + network_interface_id  = (known after apply)
        }

      + private_dns_name_options {
          + enable_resource_name_dns_a_record    = (known after apply)
          + enable_resource_name_dns_aaaa_record = (known after apply)
          + hostname_type                        = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

  # aws_security_group.sg_backend will be created
  + resource "aws_security_group" "sg_backend" {
      + arn                    = (known after apply)
      + description            = "Allow inbound traffic to the Backend"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 0
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = []
              + description      = "Ports from Backend"
              + from_port        = 22
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = (known after apply)
              + self             = false
              + to_port          = 22
            },
          + {
              + cidr_blocks      = []
              + description      = "Ports from Backend"
              + from_port        = 8080
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = (known after apply)
              + self             = false
              + to_port          = 8080
            },
        ]
      + name                   = "Backend_sec_group"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Environment" = "dev"
          + "Name"        = "Backend Security Group"
          + "Owner"       = "Lodis Artyom"
        }
      + tags_all               = {
          + "Environment" = "dev"
          + "Name"        = "Backend Security Group"
          + "Owner"       = "Lodis Artyom"
        }
      + vpc_id                 = "vpc-017f499a91c4842bf"
    }

  # aws_security_group.sg_database will be created
  + resource "aws_security_group" "sg_database" {
      + arn                    = (known after apply)
      + description            = "Allow inbound traffic to the Database"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 0
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = []
              + description      = "SSH port for Database"
              + from_port        = 22
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = (known after apply)
              + self             = false
              + to_port          = 22
            },
          + {
              + cidr_blocks      = []
              + description      = "TCP port for Database (Postgresql)"
              + from_port        = 5432
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = (known after apply)
              + self             = false
              + to_port          = 5432
            },
        ]
      + name                   = "Database_sec_group"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Environment" = "dev"
          + "Name"        = "Database Security Group"
          + "Owner"       = "Lodis Artyom"
        }
      + tags_all               = {
          + "Environment" = "dev"
          + "Name"        = "Database Security Group"
          + "Owner"       = "Lodis Artyom"
        }
      + vpc_id                 = "vpc-017f499a91c4842bf"
    }

  # aws_security_group.sg_frontend will be created
  + resource "aws_security_group" "sg_frontend" {
      + arn                    = (known after apply)
      + description            = "Allow inbound traffic to the Frontend"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 0
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = "Ports from Internet"
              + from_port        = 22
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 22
            },
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = "Ports from Internet"
              + from_port        = 443
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 443
            },
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = "Ports from Internet"
              + from_port        = 80
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 80
            },
        ]
      + name                   = "Frontend_sec_group"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Environment" = "dev"
          + "Name"        = "Frontend Security Group"
          + "Owner"       = "Lodis Artyom"
        }
      + tags_all               = {
          + "Environment" = "dev"
          + "Name"        = "Frontend Security Group"
          + "Owner"       = "Lodis Artyom"
        }
      + vpc_id                 = "vpc-017f499a91c4842bf"
    }

  # null_resource.change_front_nginx_conf will be created
  + resource "null_resource" "change_front_nginx_conf" {
      + id = (known after apply)
    }

Plan: 7 to add, 0 to change, 0 to destroy.

Do you want to perform these actions in workspace "dev"?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_security_group.sg_frontend: Creating...
aws_security_group.sg_frontend: Creation complete after 4s [id=sg-090d38f45567d8a9d]
aws_security_group.sg_backend: Creating...
aws_instance.ec2_frontend: Creating...
aws_security_group.sg_backend: Creation complete after 3s [id=sg-0ea1530e54f3b5569]
aws_security_group.sg_database: Creating...
aws_security_group.sg_database: Creation complete after 3s [id=sg-092d16fe085924acf]
aws_instance.ec2_database: Creating...
aws_instance.ec2_frontend: Still creating... [10s elapsed]
aws_instance.ec2_database: Still creating... [10s elapsed]
aws_instance.ec2_frontend: Still creating... [20s elapsed]
aws_instance.ec2_database: Still creating... [20s elapsed]
aws_instance.ec2_frontend: Still creating... [30s elapsed]
aws_instance.ec2_database: Still creating... [30s elapsed]
aws_instance.ec2_database: Creation complete after 33s [id=i-09ba9e38f446891b6]
aws_instance.ec2_frontend: Still creating... [40s elapsed]
aws_instance.ec2_frontend: Provisioning with 'file'...
aws_instance.ec2_frontend: Still creating... [50s elapsed]
aws_instance.ec2_frontend: Provisioning with 'remote-exec'...
aws_instance.ec2_frontend (remote-exec): Connecting to remote host via SSH...
aws_instance.ec2_frontend (remote-exec):   Host: 34.248.193.111
aws_instance.ec2_frontend (remote-exec):   User: ubuntu
aws_instance.ec2_frontend (remote-exec):   Password: false
aws_instance.ec2_frontend (remote-exec):   Private key: true
aws_instance.ec2_frontend (remote-exec):   Certificate: false
aws_instance.ec2_frontend (remote-exec):   SSH Agent: false
aws_instance.ec2_frontend (remote-exec):   Checking Host Key: false
aws_instance.ec2_frontend (remote-exec):   Target Platform: unix
aws_instance.ec2_frontend (remote-exec): Connected!
aws_instance.ec2_frontend (remote-exec): 0% [Working]
aws_instance.ec2_frontend (remote-exec): Get:1 http://security.ubuntu.com/ubuntu jammy-security InRelease [110 kB]
aws_instance.ec2_frontend (remote-exec): 0% [Connecting to archive.ubuntu.com (9
aws_instance.ec2_frontend (remote-exec): 0% [Connecting to archive.ubuntu.com (9
aws_instance.ec2_frontend (remote-exec): Hit:2 http://archive.ubuntu.com/ubuntu jammy InRelease
aws_instance.ec2_frontend (remote-exec): 0% [Waiting for headers]
aws_instance.ec2_frontend (remote-exec): 0% [Waiting for headers]
aws_instance.ec2_frontend (remote-exec): Get:3 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [114 kB]
aws_instance.ec2_frontend (remote-exec): 0% [3 InRelease 14.2 kB/114 kB 12%] [Wa
aws_instance.ec2_frontend (remote-exec): Get:4 http://security.ubuntu.com/ubuntu jammy-security/main amd64 Packages [588 kB]
aws_instance.ec2_frontend (remote-exec): 0% [3 InRelease 15.6 kB/114 kB 14%] [4
aws_instance.ec2_frontend (remote-exec): 0% [3 InRelease 46.0 kB/114 kB 40%]
aws_instance.ec2_frontend (remote-exec): 0% [4 Packages store 0 B] [3 InRelease
aws_instance.ec2_frontend (remote-exec): Get:5 http://security.ubuntu.com/ubuntu jammy-security/main Translation-en [123 kB]
aws_instance.ec2_frontend (remote-exec): 0% [4 Packages store 0 B] [3 InRelease
aws_instance.ec2_frontend (remote-exec): Get:6 http://security.ubuntu.com/ubuntu jammy-security/main amd64 c-n-f Metadata [7680 B]
aws_instance.ec2_frontend (remote-exec): 0% [4 Packages store 0 B] [3 InRelease
aws_instance.ec2_frontend (remote-exec): Get:7 http://security.ubuntu.com/ubuntu jammy-security/restricted amd64 Packages [528 kB]
aws_instance.ec2_frontend (remote-exec): 0% [4 Packages store 0 B] [3 InRelease
aws_instance.ec2_frontend (remote-exec): 0% [4 Packages store 0 B] [Waiting for
aws_instance.ec2_frontend (remote-exec): Get:8 http://security.ubuntu.com/ubuntu jammy-security/restricted Translation-en [81.2 kB]
aws_instance.ec2_frontend (remote-exec): 0% [4 Packages store 0 B] [Waiting for
aws_instance.ec2_frontend (remote-exec): 0% [4 Packages store 0 B] [Waiting for
aws_instance.ec2_frontend (remote-exec): Get:9 http://security.ubuntu.com/ubuntu jammy-security/restricted amd64 c-n-f Metadata [556 B]
aws_instance.ec2_frontend (remote-exec): 0% [4 Packages store 0 B] [Waiting for
aws_instance.ec2_frontend (remote-exec): 0% [4 Packages store 0 B] [Waiting for
aws_instance.ec2_frontend (remote-exec): Get:10 http://security.ubuntu.com/ubuntu jammy-security/universe amd64 Packages [632 kB]
aws_instance.ec2_frontend (remote-exec): 0% [4 Packages store 0 B] [Waiting for
aws_instance.ec2_frontend (remote-exec): 0% [4 Packages store 0 B] [Waiting for
aws_instance.ec2_frontend (remote-exec): Get:11 http://archive.ubuntu.com/ubuntu jammy-backports InRelease [99.8 kB]
aws_instance.ec2_frontend (remote-exec): 0% [4 Packages store 0 B] [11 InRelease
aws_instance.ec2_frontend (remote-exec): Get:12 http://security.ubuntu.com/ubuntu jammy-security/universe Translation-en [85.3 kB]
aws_instance.ec2_frontend (remote-exec): Get:13 http://security.ubuntu.com/ubuntu jammy-security/universe amd64 c-n-f Metadata [11.0 kB]
aws_instance.ec2_frontend (remote-exec): Get:14 http://security.ubuntu.com/ubuntu jammy-security/multiverse amd64 Packages [4268 B]
aws_instance.ec2_frontend (remote-exec): Get:15 http://security.ubuntu.com/ubuntu jammy-security/multiverse Translation-en [972 B]
aws_instance.ec2_frontend (remote-exec): Get:16 http://security.ubuntu.com/ubuntu jammy-security/multiverse amd64 c-n-f Metadata [228 B]
aws_instance.ec2_frontend (remote-exec): 0% [4 Packages store 0 B] [11 InRelease
aws_instance.ec2_frontend (remote-exec): 0% [4 Packages store 0 B]
aws_instance.ec2_frontend (remote-exec): Get:17 http://archive.ubuntu.com/ubuntu jammy/universe amd64 Packages [14.1 MB]
aws_instance.ec2_frontend (remote-exec): 0% [4 Packages store 0 B] [17 Packages
aws_instance.ec2_frontend (remote-exec): 0% [17 Packages 113 kB/14.1 MB 1%]
aws_instance.ec2_frontend (remote-exec): 0% [5 Translation-en store 0 B] [17 Pac
aws_instance.ec2_frontend (remote-exec): 0% [17 Packages 272 kB/14.1 MB 2%]
aws_instance.ec2_frontend (remote-exec): 0% [6 Commands-amd64 store 0 B] [17 Pac
aws_instance.ec2_frontend (remote-exec): 0% [17 Packages 275 kB/14.1 MB 2%]
aws_instance.ec2_frontend (remote-exec): 0% [7 Packages store 0 B] [17 Packages
aws_instance.ec2_frontend (remote-exec): 0% [7 Packages store 0 B] [17 Packages
aws_instance.ec2_frontend (remote-exec): 0% [17 Packages 919 kB/14.1 MB 7%]
aws_instance.ec2_frontend (remote-exec): 0% [8 Translation-en store 0 B] [17 Pac
aws_instance.ec2_frontend (remote-exec): 0% [17 Packages 1105 kB/14.1 MB 8%]
aws_instance.ec2_frontend (remote-exec): 0% [9 Commands-amd64 store 0 B] [17 Pac
aws_instance.ec2_frontend (remote-exec): 0% [17 Packages 1106 kB/14.1 MB 8%]
aws_instance.ec2_frontend (remote-exec): 0% [10 Packages store 0 B] [17 Packages
aws_instance.ec2_frontend (remote-exec): 25% [10 Packages store 0 B] [17 Package
aws_instance.ec2_frontend (remote-exec): 26% [17 Packages 1897 kB/14.1 MB 13%]
aws_instance.ec2_frontend (remote-exec): 26% [12 Translation-en store 0 B] [17 P
aws_instance.ec2_frontend (remote-exec): 27% [17 Packages 2059 kB/14.1 MB 15%]
aws_instance.ec2_frontend (remote-exec): 27% [13 Commands-amd64 store 0 B] [17 P
aws_instance.ec2_frontend (remote-exec): 27% [17 Packages 2070 kB/14.1 MB 15%]
aws_instance.ec2_frontend (remote-exec): 27% [14 Packages store 0 B] [17 Package
aws_instance.ec2_frontend (remote-exec): 27% [17 Packages 2089 kB/14.1 MB 15%]
aws_instance.ec2_frontend (remote-exec): 27% [15 Translation-en store 0 B] [17 P
aws_instance.ec2_frontend (remote-exec): 28% [17 Packages 2092 kB/14.1 MB 15%]
aws_instance.ec2_frontend (remote-exec): 28% [16 Commands-amd64 store 0 B] [17 P
aws_instance.ec2_frontend (remote-exec): 28% [17 Packages 2095 kB/14.1 MB 15%]
aws_instance.ec2_frontend (remote-exec): 37% [17 Packages 4885 kB/14.1 MB 35%]
aws_instance.ec2_frontend (remote-exec): 57% [17 Packages 11.3 MB/14.1 MB 80%]
aws_instance.ec2_frontend (remote-exec): 66% [17 Packages 14.1 MB/14.1 MB 100%]
aws_instance.ec2_frontend (remote-exec): 66% [Working]
aws_instance.ec2_frontend (remote-exec): 66% [17 Packages store 0 B]
aws_instance.ec2_frontend (remote-exec): Get:18 http://archive.ubuntu.com/ubuntu jammy/universe Translation-en [5652 kB]
aws_instance.ec2_frontend (remote-exec): 66% [17 Packages store 0 B] [18 Transla
aws_instance.ec2_frontend (remote-exec): Get:19 http://archive.ubuntu.com/ubuntu jammy/universe amd64 c-n-f Metadata [286 kB]
aws_instance.ec2_frontend (remote-exec): 84% [17 Packages store 0 B] [19 Command
aws_instance.ec2_frontend (remote-exec): 84% [17 Packages store 0 B]
aws_instance.ec2_frontend (remote-exec): Get:20 http://archive.ubuntu.com/ubuntu jammy/multiverse amd64 Packages [217 kB]
aws_instance.ec2_frontend (remote-exec): 84% [17 Packages store 0 B] [20 Package
aws_instance.ec2_frontend (remote-exec): 85% [17 Packages store 0 B]
aws_instance.ec2_frontend (remote-exec): Get:21 http://archive.ubuntu.com/ubuntu jammy/multiverse Translation-en [112 kB]
aws_instance.ec2_frontend (remote-exec): 85% [17 Packages store 0 B] [21 Transla
aws_instance.ec2_frontend (remote-exec): 85% [17 Packages store 0 B]
aws_instance.ec2_frontend (remote-exec): Get:22 http://archive.ubuntu.com/ubuntu jammy/multiverse amd64 c-n-f Metadata [8372 B]
aws_instance.ec2_frontend (remote-exec): 85% [17 Packages store 0 B] [22 Command
aws_instance.ec2_frontend (remote-exec): 85% [17 Packages store 0 B]
aws_instance.ec2_frontend (remote-exec): Get:23 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 Packages [833 kB]
aws_instance.ec2_frontend (remote-exec): 85% [17 Packages store 0 B] [23 Package
aws_instance.ec2_frontend (remote-exec): 88% [17 Packages store 0 B]
aws_instance.ec2_frontend (remote-exec): Get:24 http://archive.ubuntu.com/ubuntu jammy-updates/main Translation-en [184 kB]
aws_instance.ec2_frontend (remote-exec): 88% [17 Packages store 0 B] [24 Transla
aws_instance.ec2_frontend (remote-exec): Get:25 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 c-n-f Metadata [12.2 kB]
aws_instance.ec2_frontend (remote-exec): Get:26 http://archive.ubuntu.com/ubuntu jammy-updates/restricted amd64 Packages [566 kB]
aws_instance.ec2_frontend (remote-exec): 89% [17 Packages store 0 B] [26 Package
aws_instance.ec2_frontend (remote-exec): Get:27 http://archive.ubuntu.com/ubuntu jammy-updates/restricted Translation-en [87.1 kB]
aws_instance.ec2_frontend (remote-exec): Get:28 http://archive.ubuntu.com/ubuntu jammy-updates/restricted amd64 c-n-f Metadata [556 B]
aws_instance.ec2_frontend (remote-exec): Get:29 http://archive.ubuntu.com/ubuntu jammy-updates/universe amd64 Packages [790 kB]
aws_instance.ec2_frontend (remote-exec): 91% [17 Packages store 0 B] [29 Package
aws_instance.ec2_frontend (remote-exec): 93% [17 Packages store 0 B]
aws_instance.ec2_frontend (remote-exec): Get:30 http://archive.ubuntu.com/ubuntu jammy-updates/universe Translation-en [138 kB]
aws_instance.ec2_frontend (remote-exec): 93% [17 Packages store 0 B] [30 Transla
aws_instance.ec2_frontend (remote-exec): 94% [17 Packages store 0 B]
aws_instance.ec2_frontend (remote-exec): Get:31 http://archive.ubuntu.com/ubuntu jammy-updates/universe amd64 c-n-f Metadata [14.7 kB]
aws_instance.ec2_frontend (remote-exec): 94% [17 Packages store 0 B] [31 Command
aws_instance.ec2_frontend (remote-exec): 94% [17 Packages store 0 B]
aws_instance.ec2_frontend (remote-exec): Get:32 http://archive.ubuntu.com/ubuntu jammy-updates/multiverse amd64 Packages [7988 B]
aws_instance.ec2_frontend (remote-exec): 94% [17 Packages store 0 B] [32 Package
aws_instance.ec2_frontend (remote-exec): 94% [17 Packages store 0 B]
aws_instance.ec2_frontend (remote-exec): Get:33 http://archive.ubuntu.com/ubuntu jammy-updates/multiverse Translation-en [2448 B]
aws_instance.ec2_frontend (remote-exec): 94% [17 Packages store 0 B] [33 Transla
aws_instance.ec2_frontend (remote-exec): 94% [17 Packages store 0 B]
aws_instance.ec2_frontend (remote-exec): Get:34 http://archive.ubuntu.com/ubuntu jammy-updates/multiverse amd64 c-n-f Metadata [432 B]
aws_instance.ec2_frontend (remote-exec): 94% [17 Packages store 0 B] [34 Command
aws_instance.ec2_frontend (remote-exec): 94% [17 Packages store 0 B]
aws_instance.ec2_frontend (remote-exec): Get:35 http://archive.ubuntu.com/ubuntu jammy-backports/main amd64 Packages [3324 B]
aws_instance.ec2_frontend (remote-exec): 94% [17 Packages store 0 B] [35 Package
aws_instance.ec2_frontend (remote-exec): 94% [17 Packages store 0 B]
aws_instance.ec2_frontend (remote-exec): Get:36 http://archive.ubuntu.com/ubuntu jammy-backports/main Translation-en [1580 B]
aws_instance.ec2_frontend (remote-exec): Get:37 http://archive.ubuntu.com/ubuntu jammy-backports/main amd64 c-n-f Metadata [272 B]
aws_instance.ec2_frontend (remote-exec): Get:38 http://archive.ubuntu.com/ubuntu jammy-backports/restricted amd64 c-n-f Metadata [116 B]
aws_instance.ec2_frontend (remote-exec): Get:39 http://archive.ubuntu.com/ubuntu jammy-backports/universe amd64 Packages [6744 B]
aws_instance.ec2_frontend (remote-exec): 94% [17 Packages store 0 B] [Waiting fo
aws_instance.ec2_frontend (remote-exec): Get:40 http://archive.ubuntu.com/ubuntu jammy-backports/universe Translation-en [9460 B]
aws_instance.ec2_frontend (remote-exec): Get:41 http://archive.ubuntu.com/ubuntu jammy-backports/universe amd64 c-n-f Metadata [352 B]
aws_instance.ec2_frontend (remote-exec): Get:42 http://archive.ubuntu.com/ubuntu jammy-backports/multiverse amd64 c-n-f Metadata [116 B]
aws_instance.ec2_frontend (remote-exec): 94% [17 Packages store 0 B]
aws_instance.ec2_frontend (remote-exec): 94% [17 Packages store 0 B]
aws_instance.ec2_frontend (remote-exec): 94% [17 Packages store 0 B]
aws_instance.ec2_frontend: Still creating... [1m0s elapsed]
aws_instance.ec2_frontend (remote-exec): 94% [17 Packages store 0 B]
aws_instance.ec2_frontend (remote-exec): 94% [17 Packages store 0 B]
aws_instance.ec2_frontend (remote-exec): 94% [17 Packages store 0 B]
aws_instance.ec2_frontend (remote-exec): 94% [17 Packages store 0 B]
aws_instance.ec2_frontend (remote-exec): 94% [Working]              3967 kB/s 0s
aws_instance.ec2_frontend (remote-exec): 94% [18 Translation-en store 0 B]
aws_instance.ec2_frontend (remote-exec): 94% [18 Translation-en store 0 B]
aws_instance.ec2_frontend (remote-exec): 94% [18 Translation-en store 0 B]
aws_instance.ec2_frontend (remote-exec): 94% [Working]              3967 kB/s 0s
aws_instance.ec2_frontend (remote-exec): 94% [19 Commands-amd64 store 0 B]
aws_instance.ec2_frontend (remote-exec): 95% [Working]              3967 kB/s 0s
aws_instance.ec2_frontend (remote-exec): 95% [20 Packages store 0 B]
aws_instance.ec2_frontend (remote-exec): 95% [Working]              3967 kB/s 0s
aws_instance.ec2_frontend (remote-exec): 95% [21 Translation-en store 0 B]
aws_instance.ec2_frontend (remote-exec): 95% [Working]              3967 kB/s 0s
aws_instance.ec2_frontend (remote-exec): 95% [22 Commands-amd64 store 0 B]
aws_instance.ec2_frontend (remote-exec): 95% [Working]              3967 kB/s 0s
aws_instance.ec2_frontend (remote-exec): 95% [23 Packages store 0 B]
aws_instance.ec2_frontend (remote-exec): 95% [Working]              3967 kB/s 0s
aws_instance.ec2_frontend (remote-exec): 95% [24 Translation-en store 0 B]
aws_instance.ec2_frontend (remote-exec): 96% [Working]              3967 kB/s 0s
aws_instance.ec2_frontend (remote-exec): 96% [25 Commands-amd64 store 0 B]
aws_instance.ec2_frontend (remote-exec): 96% [Working]              3967 kB/s 0s
aws_instance.ec2_frontend (remote-exec): 96% [26 Packages store 0 B]
aws_instance.ec2_frontend (remote-exec): 96% [Working]              3967 kB/s 0s
aws_instance.ec2_frontend (remote-exec): 96% [27 Translation-en store 0 B]
aws_instance.ec2_frontend (remote-exec): 96% [Working]              3967 kB/s 0s
aws_instance.ec2_frontend (remote-exec): 96% [28 Commands-amd64 store 0 B]
aws_instance.ec2_frontend (remote-exec): 97% [Working]              3967 kB/s 0s
aws_instance.ec2_frontend (remote-exec): 97% [29 Packages store 0 B]
aws_instance.ec2_frontend (remote-exec): 97% [Working]              3967 kB/s 0s
aws_instance.ec2_frontend (remote-exec): 97% [30 Translation-en store 0 B]
aws_instance.ec2_frontend (remote-exec): 97% [Working]              3967 kB/s 0s
aws_instance.ec2_frontend (remote-exec): 97% [31 Commands-amd64 store 0 B]
aws_instance.ec2_frontend (remote-exec): 97% [Working]              3967 kB/s 0s
aws_instance.ec2_frontend (remote-exec): 97% [32 Packages store 0 B]
aws_instance.ec2_frontend (remote-exec): 98% [Working]              3967 kB/s 0s
aws_instance.ec2_frontend (remote-exec): 98% [33 Translation-en store 0 B]
aws_instance.ec2_frontend (remote-exec): 98% [Working]              3967 kB/s 0s
aws_instance.ec2_frontend (remote-exec): 98% [34 Commands-amd64 store 0 B]
aws_instance.ec2_frontend (remote-exec): 98% [Working]              3967 kB/s 0s
aws_instance.ec2_frontend (remote-exec): 98% [35 Packages store 0 B]
aws_instance.ec2_frontend (remote-exec): 98% [Working]              3967 kB/s 0s
aws_instance.ec2_frontend (remote-exec): 98% [36 Translation-en store 0 B]
aws_instance.ec2_frontend (remote-exec): 99% [Working]              3967 kB/s 0s
aws_instance.ec2_frontend (remote-exec): 99% [37 Commands-amd64 store 0 B]
aws_instance.ec2_frontend (remote-exec): 99% [Working]              3967 kB/s 0s
aws_instance.ec2_frontend (remote-exec): 99% [38 Commands-amd64 store 0 B]
aws_instance.ec2_frontend (remote-exec): 99% [Working]              3967 kB/s 0s
aws_instance.ec2_frontend (remote-exec): 99% [39 Packages store 0 B]
aws_instance.ec2_frontend (remote-exec): 99% [Working]              3967 kB/s 0s
aws_instance.ec2_frontend (remote-exec): 99% [40 Translation-en store 0 B]
aws_instance.ec2_frontend (remote-exec): 100% [Working]             3967 kB/s 0s
aws_instance.ec2_frontend (remote-exec): 100% [41 Commands-amd64 store 0 B]
aws_instance.ec2_frontend (remote-exec): 100% [Working]             3967 kB/s 0s
aws_instance.ec2_frontend (remote-exec): 100% [42 Commands-amd64 store 0 B]
aws_instance.ec2_frontend (remote-exec): 100% [Working]             3967 kB/s 0s
aws_instance.ec2_frontend (remote-exec): Fetched 25.4 MB in 9s (2718 kB/s)
aws_instance.ec2_frontend (remote-exec): Reading package lists... 0%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 0%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 0%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 49%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 49%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 72%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 72%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 72%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 72%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 73%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 73%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 76%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 76%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 78%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 78%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 81%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 81%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 82%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 82%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 86%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 86%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 87%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 87%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 87%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 87%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 87%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 87%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 87%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 87%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 87%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 87%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 87%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 87%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 87%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 87%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 90%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 90%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 91%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 91%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 92%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 94%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 94%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 95%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 95%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 98%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 98%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 99%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 99%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 99%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 99%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 99%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 99%
aws_instance.ec2_frontend (remote-exec): Reading package lists... Done
aws_instance.ec2_frontend (remote-exec): Reading package lists... 0%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 0%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 0%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 19%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 19%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 32%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 32%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 53%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 53%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 63%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 63%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 88%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 88%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 96%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 96%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 96%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 96%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 96%
aws_instance.ec2_frontend (remote-exec): Reading package lists... 96%
aws_instance.ec2_frontend (remote-exec): Reading package lists... Done
aws_instance.ec2_frontend (remote-exec): Building dependency tree... 0%
aws_instance.ec2_frontend (remote-exec): Building dependency tree... 0%
aws_instance.ec2_frontend (remote-exec): Building dependency tree... 50%
aws_instance.ec2_frontend (remote-exec): Building dependency tree... 50%
aws_instance.ec2_frontend (remote-exec): Building dependency tree... Done
aws_instance.ec2_frontend (remote-exec): Reading state information... 0%
aws_instance.ec2_frontend (remote-exec): Reading state information... 0%
aws_instance.ec2_frontend (remote-exec): Reading state information... Done
aws_instance.ec2_frontend (remote-exec): The following additional packages will be installed:
aws_instance.ec2_frontend (remote-exec):   libnginx-mod-http-echo
aws_instance.ec2_frontend (remote-exec):   libnginx-mod-http-geoip2
aws_instance.ec2_frontend (remote-exec):   nginx-common nginx-light
aws_instance.ec2_frontend (remote-exec): Suggested packages:
aws_instance.ec2_frontend (remote-exec):   fcgiwrap nginx-doc ssl-cert
aws_instance.ec2_frontend (remote-exec): The following NEW packages will be installed:
aws_instance.ec2_frontend (remote-exec):   libnginx-mod-http-echo
aws_instance.ec2_frontend (remote-exec):   libnginx-mod-http-geoip2 nginx
aws_instance.ec2_frontend (remote-exec):   nginx-common nginx-light
aws_instance.ec2_frontend (remote-exec): 0 upgraded, 5 newly installed, 0 to remove and 5 not upgraded.
aws_instance.ec2_frontend (remote-exec): Need to get 535 kB of archives.
aws_instance.ec2_frontend (remote-exec): After this operation, 1755 kB of additional disk space will be used.
aws_instance.ec2_frontend (remote-exec): 0% [Working]
aws_instance.ec2_frontend (remote-exec): Get:1 http://security.ubuntu.com/ubuntu jammy-security/main amd64 nginx-common all 1.18.0-6ubuntu14.3 [40.0 kB]
aws_instance.ec2_frontend (remote-exec): 0% [1 nginx-common 0 B/40.0 kB 0%]
aws_instance.ec2_frontend (remote-exec): 10% [Working]
aws_instance.ec2_frontend (remote-exec): Get:2 http://security.ubuntu.com/ubuntu jammy-security/universe amd64 libnginx-mod-http-echo amd64 1.18.0-6ubuntu14.3 [22.7 kB]
aws_instance.ec2_frontend (remote-exec): 10% [2 libnginx-mod-http-echo 0 B/22.7
aws_instance.ec2_frontend (remote-exec): 17% [Working]
aws_instance.ec2_frontend (remote-exec): Get:3 http://security.ubuntu.com/ubuntu jammy-security/main amd64 libnginx-mod-http-geoip2 amd64 1.18.0-6ubuntu14.3 [11.9 kB]
aws_instance.ec2_frontend (remote-exec): 17% [3 libnginx-mod-http-geoip2 0 B/11.
aws_instance.ec2_frontend (remote-exec): 23% [Working]
aws_instance.ec2_frontend (remote-exec): Get:4 http://security.ubuntu.com/ubuntu jammy-security/universe amd64 nginx-light amd64 1.18.0-6ubuntu14.3 [457 kB]
aws_instance.ec2_frontend (remote-exec): 23% [4 nginx-light 0 B/457 kB 0%]
aws_instance.ec2_frontend (remote-exec): 95% [Working]
aws_instance.ec2_frontend (remote-exec): Get:5 http://security.ubuntu.com/ubuntu jammy-security/main amd64 nginx amd64 1.18.0-6ubuntu14.3 [3882 B]
aws_instance.ec2_frontend (remote-exec): 95% [5 nginx 0 B/3882 B 0%]
aws_instance.ec2_frontend (remote-exec): 100% [Working]
aws_instance.ec2_frontend (remote-exec): Fetched 535 kB in 0s (3582 kB/s)
aws_instance.ec2_frontend (remote-exec): Preconfiguring packages ...
aws_instance.ec2_frontend (remote-exec): Selecting previously unselected package nginx-common.
aws_instance.ec2_frontend (remote-exec): (Reading database ...
aws_instance.ec2_frontend (remote-exec): (Reading database ... 5%
aws_instance.ec2_frontend (remote-exec): (Reading database ... 10%
aws_instance.ec2_frontend (remote-exec): (Reading database ... 15%
aws_instance.ec2_frontend (remote-exec): (Reading database ... 20%
aws_instance.ec2_frontend (remote-exec): (Reading database ... 25%
aws_instance.ec2_frontend (remote-exec): (Reading database ... 30%
aws_instance.ec2_frontend (remote-exec): (Reading database ... 35%
aws_instance.ec2_frontend (remote-exec): (Reading database ... 40%
aws_instance.ec2_frontend (remote-exec): (Reading database ... 45%
aws_instance.ec2_frontend (remote-exec): (Reading database ... 50%
aws_instance.ec2_frontend (remote-exec): (Reading database ... 55%
aws_instance.ec2_frontend (remote-exec): (Reading database ... 60%
aws_instance.ec2_frontend (remote-exec): (Reading database ... 65%
aws_instance.ec2_frontend (remote-exec): (Reading database ... 70%
aws_instance.ec2_frontend (remote-exec): (Reading database ... 75%
aws_instance.ec2_frontend (remote-exec): (Reading database ... 80%
aws_instance.ec2_frontend (remote-exec): (Reading database ... 85%
aws_instance.ec2_frontend (remote-exec): (Reading database ... 90%
aws_instance.ec2_frontend (remote-exec): (Reading database ... 95%
aws_instance.ec2_frontend (remote-exec): (Reading database ... 100%
aws_instance.ec2_frontend (remote-exec): (Reading database ... 63567 files and directories currently installed.)
aws_instance.ec2_frontend (remote-exec): Preparing to unpack .../nginx-common_1.18.0-6ubuntu14.3_all.deb ...
aws_instance.ec2_frontend (remote-exec): Unpacking nginx-common (1.18.0-6ubuntu14.3) ...
aws_instance.ec2_frontend (remote-exec): Selecting previously unselected package libnginx-mod-http-echo.
aws_instance.ec2_frontend (remote-exec): Preparing to unpack .../libnginx-mod-http-echo_1.18.0-6ubuntu14.3_amd64.deb ...
aws_instance.ec2_frontend (remote-exec): Unpacking libnginx-mod-http-echo (1.18.0-6ubuntu14.3) ...
aws_instance.ec2_frontend (remote-exec): Selecting previously unselected package libnginx-mod-http-geoip2.
aws_instance.ec2_frontend (remote-exec): Preparing to unpack .../libnginx-mod-http-geoip2_1.18.0-6ubuntu14.3_amd64.deb ...
aws_instance.ec2_frontend (remote-exec): Unpacking libnginx-mod-http-geoip2 (1.18.0-6ubuntu14.3) ...
aws_instance.ec2_frontend (remote-exec): Selecting previously unselected package nginx-light.
aws_instance.ec2_frontend (remote-exec): Preparing to unpack .../nginx-light_1.18.0-6ubuntu14.3_amd64.deb ...
aws_instance.ec2_frontend (remote-exec): Unpacking nginx-light (1.18.0-6ubuntu14.3) ...
aws_instance.ec2_frontend (remote-exec): Selecting previously unselected package nginx.
aws_instance.ec2_frontend (remote-exec): Preparing to unpack .../nginx_1.18.0-6ubuntu14.3_amd64.deb ...
aws_instance.ec2_frontend (remote-exec): Unpacking nginx (1.18.0-6ubuntu14.3) ...
aws_instance.ec2_frontend (remote-exec): Setting up nginx-common (1.18.0-6ubuntu14.3) ...
aws_instance.ec2_frontend: Still creating... [1m10s elapsed]
aws_instance.ec2_frontend (remote-exec): Created symlink /etc/systemd/system/multi-user.target.wants/nginx.service → /lib/systemd/system/nginx.service.
aws_instance.ec2_frontend (remote-exec): Setting up libnginx-mod-http-echo (1.18.0-6ubuntu14.3) ...
aws_instance.ec2_frontend (remote-exec): Setting up libnginx-mod-http-geoip2 (1.18.0-6ubuntu14.3) ...
aws_instance.ec2_frontend (remote-exec): Setting up nginx-light (1.18.0-6ubuntu14.3) ...
aws_instance.ec2_frontend (remote-exec):  * Upgrading binary nginx
aws_instance.ec2_frontend (remote[ OK ]:
aws_instance.ec2_frontend (remote-exec): Setting up nginx (1.18.0-6ubuntu14.3) ...
aws_instance.ec2_frontend (remote-exec): Processing triggers for man-db (2.10.2-1) ...
aws_instance.ec2_frontend (remote-exec): Processing triggers for ufw (0.36.1-4build1) ...
aws_instance.ec2_frontend (remote-exec): Scanning processes... [                ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [                ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [                ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [                ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [                ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [                ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [                ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [                ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=               ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=               ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=               ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=               ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=               ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=               ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=               ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [==              ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [==              ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [==              ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [==              ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [==              ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [==              ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [==              ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [===             ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [===             ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [===             ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [===             ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [===             ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [===             ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [===             ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [====            ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [====            ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [====            ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [====            ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [====            ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [====            ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [====            ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=====           ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=====           ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=====           ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=====           ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=====           ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=====           ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=====           ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=====           ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [======          ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [======          ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [======          ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [======          ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [======          ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [======          ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [======          ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=======         ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=======         ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=======         ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=======         ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=======         ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=======         ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=======         ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [========        ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [========        ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [========        ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [========        ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [========        ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [========        ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [========        ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=========       ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=========       ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=========       ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=========       ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=========       ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=========       ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=========       ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [==========      ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [==========      ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [==========      ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [==========      ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [==========      ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [==========      ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [==========      ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [==========      ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [===========     ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [===========     ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [===========     ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [===========     ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [===========     ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [===========     ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [===========     ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [============    ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [============    ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [============    ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [============    ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [============    ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [============    ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [============    ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=============   ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=============   ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=============   ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=============   ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=============   ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=============   ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=============   ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [==============  ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [==============  ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [==============  ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [==============  ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [==============  ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [==============  ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [==============  ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=============== ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=============== ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=============== ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=============== ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=============== ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=============== ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [=============== ]
aws_instance.ec2_frontend (remote-exec): Scanning processes... [================]
aws_instance.ec2_frontend (remote-exec): Scanning processes...
aws_instance.ec2_frontend (remote-exec): Scanning linux images... [             ]
aws_instance.ec2_frontend (remote-exec): Scanning linux images... [====         ]
aws_instance.ec2_frontend (remote-exec): Scanning linux images... [========     ]
aws_instance.ec2_frontend (remote-exec): Scanning linux images... [=============]
aws_instance.ec2_frontend (remote-exec): Scanning linux images...

aws_instance.ec2_frontend (remote-exec): Running kernel seems to be up-to-date.

aws_instance.ec2_frontend (remote-exec): No services need to be restarted.

aws_instance.ec2_frontend (remote-exec): No containers need to be restarted.

aws_instance.ec2_frontend (remote-exec): No user sessions are running outdated
aws_instance.ec2_frontend (remote-exec):  binaries.

aws_instance.ec2_frontend (remote-exec): No VM guests are running outdated
aws_instance.ec2_frontend (remote-exec):  hypervisor (qemu) binaries on this
aws_instance.ec2_frontend (remote-exec):  host.
aws_instance.ec2_frontend: Creation complete after 1m15s [id=i-04c7a513231814a21]
data.aws_instance.front_ip: Reading...
data.aws_instance.front_ip: Read complete after 1s [id=i-04c7a513231814a21]
aws_instance.ec2_backend: Creating...
aws_instance.ec2_backend: Still creating... [10s elapsed]
aws_instance.ec2_backend: Still creating... [20s elapsed]
aws_instance.ec2_backend: Still creating... [30s elapsed]
aws_instance.ec2_backend: Still creating... [40s elapsed]
aws_instance.ec2_backend: Still creating... [50s elapsed]
aws_instance.ec2_backend: Provisioning with 'file'...
aws_instance.ec2_backend: Provisioning with 'file'...
aws_instance.ec2_backend: Still creating... [1m2s elapsed]
aws_instance.ec2_backend: Provisioning with 'remote-exec'...
aws_instance.ec2_backend (remote-exec): Connecting to remote host via SSH...
aws_instance.ec2_backend (remote-exec):   Host: 10.33.22.12
aws_instance.ec2_backend (remote-exec):   User: ubuntu
aws_instance.ec2_backend (remote-exec):   Password: false
aws_instance.ec2_backend (remote-exec):   Private key: true
aws_instance.ec2_backend (remote-exec):   Certificate: false
aws_instance.ec2_backend (remote-exec):   SSH Agent: false
aws_instance.ec2_backend (remote-exec):   Checking Host Key: false
aws_instance.ec2_backend (remote-exec):   Target Platform: unix
aws_instance.ec2_backend (remote-exec): Using configured bastion host...
aws_instance.ec2_backend (remote-exec):   Host: 34.248.193.111
aws_instance.ec2_backend (remote-exec):   User: ubuntu
aws_instance.ec2_backend (remote-exec):   Password: false
aws_instance.ec2_backend (remote-exec):   Private key: true
aws_instance.ec2_backend (remote-exec):   Certificate: false
aws_instance.ec2_backend (remote-exec):   SSH Agent: false
aws_instance.ec2_backend (remote-exec):   Checking Host Key: false
aws_instance.ec2_backend (remote-exec): Connected!
aws_instance.ec2_backend (remote-exec): 0% [Working]
aws_instance.ec2_backend (remote-exec): Hit:1 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy InRelease
aws_instance.ec2_backend (remote-exec): 0% [Connecting to security.ubuntu.com (
aws_instance.ec2_backend (remote-exec): Get:2 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-updates InRelease [114 kB]
aws_instance.ec2_backend (remote-exec): Get:3 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-backports InRelease [99.8 kB]
aws_instance.ec2_backend (remote-exec): 0% [Connecting to security.ubuntu.com (
aws_instance.ec2_backend (remote-exec): Get:4 http://security.ubuntu.com/ubuntu jammy-security InRelease [110 kB]
aws_instance.ec2_backend (remote-exec): 0% [4 InRelease 14.2 kB/110 kB 13%]
aws_instance.ec2_backend (remote-exec): 0% [4 InRelease 22.9 kB/110 kB 21%]
aws_instance.ec2_backend (remote-exec): Get:5 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy/universe amd64 Packages [14.1 MB]
aws_instance.ec2_backend (remote-exec): 0% [5 Packages 17.2 kB/14.1 MB 0%] [4 I
aws_instance.ec2_backend (remote-exec): 0% [5 Packages 5094 kB/14.1 MB 36%]
aws_instance.ec2_backend (remote-exec): 0% [5 Packages 14.1 MB/14.1 MB 100%]
aws_instance.ec2_backend (remote-exec): 0% [Working]
aws_instance.ec2_backend (remote-exec): Get:6 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy/universe Translation-en [5652 kB]
aws_instance.ec2_backend (remote-exec): 0% [6 Translation-en 26.6 kB/5652 kB 0%
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B] [6 Translatio
aws_instance.ec2_backend (remote-exec): Get:7 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy/universe amd64 c-n-f Metadata [286 kB]
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B] [7 Commands-a
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): Get:8 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy/multiverse amd64 Packages [217 kB]
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B] [8 Packages 0
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): Get:9 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy/multiverse Translation-en [112 kB]
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B] [9 Translatio
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): Get:10 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy/multiverse amd64 c-n-f Metadata [8372 B]
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B] [10 Commands-
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): Get:11 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-updates/main amd64 Packages [833 kB]
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B] [11 Packages
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): Get:12 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-updates/main Translation-en [184 kB]
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B] [12 Translati
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): Get:13 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-updates/main amd64 c-n-f Metadata [12.2 kB]
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B] [13 Commands-
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): Get:14 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-updates/restricted amd64 Packages [566 kB]
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B] [14 Packages
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B] [14 Packages
aws_instance.ec2_backend (remote-exec): Get:15 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-updates/restricted Translation-en [87.1 kB]
aws_instance.ec2_backend (remote-exec): Get:16 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-updates/restricted amd64 c-n-f Metadata [556 B]
aws_instance.ec2_backend (remote-exec): Get:17 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-updates/universe amd64 Packages [790 kB]
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B] [17 Packages
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): Get:18 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-updates/universe Translation-en [138 kB]
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B] [18 Translati
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): Get:19 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-updates/universe amd64 c-n-f Metadata [14.7 kB]
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B] [19 Commands-
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): Get:20 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-updates/multiverse amd64 Packages [7988 B]
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B] [20 Packages
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): Get:21 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-updates/multiverse Translation-en [2448 B]
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B] [21 Translati
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): Get:22 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-updates/multiverse amd64 c-n-f Metadata [432 B]
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B] [22 Commands-
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): Get:23 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-backports/main amd64 Packages [3324 B]
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B] [23 Packages
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): Get:24 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-backports/main Translation-en [1580 B]
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B] [24 Translati
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): Get:25 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-backports/main amd64 c-n-f Metadata [272 B]
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B] [25 Commands-
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): Get:26 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-backports/restricted amd64 c-n-f Metadata [116 B]
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B] [26 Commands-
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): Get:27 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-backports/universe amd64 Packages [6744 B]
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B] [27 Packages
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): Get:28 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-backports/universe Translation-en [9460 B]
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B] [28 Translati
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): Get:29 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-backports/universe amd64 c-n-f Metadata [352 B]
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B] [29 Commands-
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): Get:30 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-backports/multiverse amd64 c-n-f Metadata [116 B]
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B] [30 Commands-
aws_instance.ec2_backend (remote-exec): 0% [5 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): 84% [5 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): Get:31 http://security.ubuntu.com/ubuntu jammy-security/main amd64 Packages [588 kB]
aws_instance.ec2_backend (remote-exec): 84% [5 Packages store 0 B] [31 Packages
aws_instance.ec2_backend (remote-exec): 86% [5 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): Get:32 http://security.ubuntu.com/ubuntu jammy-security/main Translation-en [123 kB]
aws_instance.ec2_backend (remote-exec): 86% [5 Packages store 0 B] [32 Translat
aws_instance.ec2_backend (remote-exec): Get:33 http://security.ubuntu.com/ubuntu jammy-security/main amd64 c-n-f Metadata [7680 B]
aws_instance.ec2_backend (remote-exec): 87% [5 Packages store 0 B] [33 Commands
aws_instance.ec2_backend (remote-exec): Get:34 http://security.ubuntu.com/ubuntu jammy-security/restricted amd64 Packages [528 kB]
aws_instance.ec2_backend (remote-exec): 87% [5 Packages store 0 B] [34 Packages
aws_instance.ec2_backend (remote-exec): Get:35 http://security.ubuntu.com/ubuntu jammy-security/restricted Translation-en [81.2 kB]
aws_instance.ec2_backend (remote-exec): 88% [5 Packages store 0 B] [35 Translat
aws_instance.ec2_backend (remote-exec): Get:36 http://security.ubuntu.com/ubuntu jammy-security/restricted amd64 c-n-f Metadata [556 B]
aws_instance.ec2_backend (remote-exec): Get:37 http://security.ubuntu.com/ubuntu jammy-security/universe amd64 Packages [632 kB]
aws_instance.ec2_backend (remote-exec): 89% [5 Packages store 0 B] [37 Packages
aws_instance.ec2_backend (remote-exec): Get:38 http://security.ubuntu.com/ubuntu jammy-security/universe Translation-en [85.3 kB]
aws_instance.ec2_backend (remote-exec): 91% [5 Packages store 0 B] [38 Translat
aws_instance.ec2_backend (remote-exec): Get:39 http://security.ubuntu.com/ubuntu jammy-security/universe amd64 c-n-f Metadata [11.0 kB]
aws_instance.ec2_backend (remote-exec): 91% [5 Packages store 0 B] [39 Commands
aws_instance.ec2_backend (remote-exec): Get:40 http://security.ubuntu.com/ubuntu jammy-security/multiverse amd64 Packages [4268 B]
aws_instance.ec2_backend (remote-exec): Get:41 http://security.ubuntu.com/ubuntu jammy-security/multiverse Translation-en [972 B]
aws_instance.ec2_backend (remote-exec): Get:42 http://security.ubuntu.com/ubuntu jammy-security/multiverse amd64 c-n-f Metadata [228 B]
aws_instance.ec2_backend (remote-exec): 91% [5 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): 91% [5 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): 91% [Working]
aws_instance.ec2_backend (remote-exec): 91% [6 Translation-en store 0 B]
aws_instance.ec2_backend (remote-exec): 91% [6 Translation-en store 0 B]
aws_instance.ec2_backend (remote-exec): 91% [Working]
aws_instance.ec2_backend (remote-exec): 91% [7 Commands-amd64 store 0 B]
aws_instance.ec2_backend (remote-exec): 92% [Working]
aws_instance.ec2_backend (remote-exec): 92% [8 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): 92% [Working]
aws_instance.ec2_backend (remote-exec): 92% [9 Translation-en store 0 B]
aws_instance.ec2_backend (remote-exec): 92% [Working]
aws_instance.ec2_backend (remote-exec): 92% [10 Commands-amd64 store 0 B]
aws_instance.ec2_backend (remote-exec): 92% [Working]
aws_instance.ec2_backend (remote-exec): 92% [11 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): 93% [Working]
aws_instance.ec2_backend (remote-exec): 93% [12 Translation-en store 0 B]
aws_instance.ec2_backend (remote-exec): 93% [Working]
aws_instance.ec2_backend (remote-exec): 93% [13 Commands-amd64 store 0 B]
aws_instance.ec2_backend (remote-exec): 93% [Working]
aws_instance.ec2_backend (remote-exec): 93% [14 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): 93% [Working]
aws_instance.ec2_backend (remote-exec): 93% [15 Translation-en store 0 B]
aws_instance.ec2_backend (remote-exec): 94% [Working]
aws_instance.ec2_backend (remote-exec): 94% [16 Commands-amd64 store 0 B]
aws_instance.ec2_backend (remote-exec): 94% [Working]
aws_instance.ec2_backend (remote-exec): 94% [17 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): 94% [Working]
aws_instance.ec2_backend (remote-exec): 94% [18 Translation-en store 0 B]
aws_instance.ec2_backend (remote-exec): 94% [Working]
aws_instance.ec2_backend (remote-exec): 94% [19 Commands-amd64 store 0 B]
aws_instance.ec2_backend (remote-exec): 95% [Working]
aws_instance.ec2_backend (remote-exec): 95% [20 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): 95% [Working]
aws_instance.ec2_backend (remote-exec): 95% [21 Translation-en store 0 B]
aws_instance.ec2_backend (remote-exec): 95% [Working]
aws_instance.ec2_backend (remote-exec): 95% [22 Commands-amd64 store 0 B]
aws_instance.ec2_backend (remote-exec): 95% [Working]
aws_instance.ec2_backend (remote-exec): 95% [23 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): 95% [Working]
aws_instance.ec2_backend (remote-exec): 95% [24 Translation-en store 0 B]
aws_instance.ec2_backend (remote-exec): 96% [Working]
aws_instance.ec2_backend (remote-exec): 96% [25 Commands-amd64 store 0 B]
aws_instance.ec2_backend (remote-exec): 96% [Working]
aws_instance.ec2_backend (remote-exec): 96% [26 Commands-amd64 store 0 B]
aws_instance.ec2_backend (remote-exec): 96% [Working]
aws_instance.ec2_backend (remote-exec): 96% [27 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): 96% [Working]
aws_instance.ec2_backend (remote-exec): 96% [28 Translation-en store 0 B]
aws_instance.ec2_backend (remote-exec): 97% [Working]
aws_instance.ec2_backend (remote-exec): 97% [29 Commands-amd64 store 0 B]
aws_instance.ec2_backend (remote-exec): 97% [Working]
aws_instance.ec2_backend (remote-exec): 97% [30 Commands-amd64 store 0 B]
aws_instance.ec2_backend (remote-exec): 97% [Working]
aws_instance.ec2_backend (remote-exec): 97% [31 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): 97% [Working]
aws_instance.ec2_backend (remote-exec): 97% [32 Translation-en store 0 B]
aws_instance.ec2_backend (remote-exec): 98% [Working]
aws_instance.ec2_backend (remote-exec): 98% [33 Commands-amd64 store 0 B]
aws_instance.ec2_backend (remote-exec): 98% [Working]
aws_instance.ec2_backend (remote-exec): 98% [34 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): 98% [Working]
aws_instance.ec2_backend (remote-exec): 98% [35 Translation-en store 0 B]
aws_instance.ec2_backend (remote-exec): 98% [Working]
aws_instance.ec2_backend (remote-exec): 98% [36 Commands-amd64 store 0 B]
aws_instance.ec2_backend (remote-exec): 99% [Working]
aws_instance.ec2_backend (remote-exec): 99% [37 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): 99% [Working]
aws_instance.ec2_backend (remote-exec): 99% [38 Translation-en store 0 B]
aws_instance.ec2_backend (remote-exec): 99% [Working]
aws_instance.ec2_backend (remote-exec): 99% [39 Commands-amd64 store 0 B]
aws_instance.ec2_backend (remote-exec): 99% [Working]
aws_instance.ec2_backend (remote-exec): 99% [40 Packages store 0 B]
aws_instance.ec2_backend (remote-exec): 100% [Working]
aws_instance.ec2_backend (remote-exec): 100% [41 Translation-en store 0 B]
aws_instance.ec2_backend (remote-exec): 100% [Working]
aws_instance.ec2_backend (remote-exec): 100% [42 Commands-amd64 store 0 B]
aws_instance.ec2_backend (remote-exec): 100% [Working]
aws_instance.ec2_backend (remote-exec): Fetched 25.4 MB in 5s (5214 kB/s)
aws_instance.ec2_backend: Still creating... [1m12s elapsed]
aws_instance.ec2_backend (remote-exec): Reading package lists... 0%
aws_instance.ec2_backend (remote-exec): Reading package lists... 0%
aws_instance.ec2_backend (remote-exec): Reading package lists... 0%
aws_instance.ec2_backend (remote-exec): Reading package lists... 4%
aws_instance.ec2_backend (remote-exec): Reading package lists... 4%
aws_instance.ec2_backend (remote-exec): Reading package lists... 6%
aws_instance.ec2_backend (remote-exec): Reading package lists... 6%
aws_instance.ec2_backend (remote-exec): Reading package lists... 7%
aws_instance.ec2_backend (remote-exec): Reading package lists... 7%
aws_instance.ec2_backend (remote-exec): Reading package lists... 7%
aws_instance.ec2_backend (remote-exec): Reading package lists... 7%
aws_instance.ec2_backend (remote-exec): Reading package lists... 53%
aws_instance.ec2_backend (remote-exec): Reading package lists... 53%
aws_instance.ec2_backend (remote-exec): Reading package lists... 74%
aws_instance.ec2_backend (remote-exec): Reading package lists... 74%
aws_instance.ec2_backend (remote-exec): Reading package lists... 75%
aws_instance.ec2_backend (remote-exec): Reading package lists... 75%
aws_instance.ec2_backend (remote-exec): Reading package lists... 75%
aws_instance.ec2_backend (remote-exec): Reading package lists... 75%
aws_instance.ec2_backend (remote-exec): Reading package lists... 78%
aws_instance.ec2_backend (remote-exec): Reading package lists... 78%
aws_instance.ec2_backend (remote-exec): Reading package lists... 80%
aws_instance.ec2_backend (remote-exec): Reading package lists... 80%
aws_instance.ec2_backend (remote-exec): Reading package lists... 81%
aws_instance.ec2_backend (remote-exec): Reading package lists... 82%
aws_instance.ec2_backend (remote-exec): Reading package lists... 82%
aws_instance.ec2_backend (remote-exec): Reading package lists... 84%
aws_instance.ec2_backend (remote-exec): Reading package lists... 84%
aws_instance.ec2_backend (remote-exec): Reading package lists... 87%
aws_instance.ec2_backend (remote-exec): Reading package lists... 87%
aws_instance.ec2_backend (remote-exec): Reading package lists... 88%
aws_instance.ec2_backend (remote-exec): Reading package lists... 88%
aws_instance.ec2_backend (remote-exec): Reading package lists... 88%
aws_instance.ec2_backend (remote-exec): Reading package lists... 88%
aws_instance.ec2_backend (remote-exec): Reading package lists... 88%
aws_instance.ec2_backend (remote-exec): Reading package lists... 88%
aws_instance.ec2_backend (remote-exec): Reading package lists... 88%
aws_instance.ec2_backend (remote-exec): Reading package lists... 88%
aws_instance.ec2_backend (remote-exec): Reading package lists... 88%
aws_instance.ec2_backend (remote-exec): Reading package lists... 88%
aws_instance.ec2_backend (remote-exec): Reading package lists... 88%
aws_instance.ec2_backend (remote-exec): Reading package lists... 88%
aws_instance.ec2_backend (remote-exec): Reading package lists... 88%
aws_instance.ec2_backend (remote-exec): Reading package lists... 88%
aws_instance.ec2_backend (remote-exec): Reading package lists... 90%
aws_instance.ec2_backend (remote-exec): Reading package lists... 90%
aws_instance.ec2_backend (remote-exec): Reading package lists... 92%
aws_instance.ec2_backend (remote-exec): Reading package lists... 92%
aws_instance.ec2_backend (remote-exec): Reading package lists... 94%
aws_instance.ec2_backend (remote-exec): Reading package lists... 94%
aws_instance.ec2_backend (remote-exec): Reading package lists... 95%
aws_instance.ec2_backend (remote-exec): Reading package lists... 95%
aws_instance.ec2_backend (remote-exec): Reading package lists... 98%
aws_instance.ec2_backend (remote-exec): Reading package lists... 98%
aws_instance.ec2_backend (remote-exec): Reading package lists... 99%
aws_instance.ec2_backend (remote-exec): Reading package lists... 99%
aws_instance.ec2_backend (remote-exec): Reading package lists... 99%
aws_instance.ec2_backend (remote-exec): Reading package lists... 99%
aws_instance.ec2_backend (remote-exec): Reading package lists... 99%
aws_instance.ec2_backend (remote-exec): Reading package lists... 99%
aws_instance.ec2_backend (remote-exec): Reading package lists... Done
aws_instance.ec2_backend (remote-exec): Reading package lists... 0%
aws_instance.ec2_backend (remote-exec): Reading package lists... 100%
aws_instance.ec2_backend (remote-exec): Reading package lists... Done
aws_instance.ec2_backend (remote-exec): Building dependency tree... 0%
aws_instance.ec2_backend (remote-exec): Building dependency tree... 0%
aws_instance.ec2_backend (remote-exec): Building dependency tree... 50%
aws_instance.ec2_backend (remote-exec): Building dependency tree... 50%
aws_instance.ec2_backend (remote-exec): Building dependency tree... Done
aws_instance.ec2_backend (remote-exec): Reading state information... 0%
aws_instance.ec2_backend (remote-exec): Reading state information... 0%
aws_instance.ec2_backend (remote-exec): Reading state information... Done
aws_instance.ec2_backend (remote-exec): The following additional packages will be installed:
aws_instance.ec2_backend (remote-exec):   fontconfig-config fonts-dejavu-core
aws_instance.ec2_backend (remote-exec):   libdeflate0 libfontconfig1 libgd3
aws_instance.ec2_backend (remote-exec):   libjbig0 libjpeg-turbo8 libjpeg8
aws_instance.ec2_backend (remote-exec):   libnginx-mod-http-geoip2
aws_instance.ec2_backend (remote-exec):   libnginx-mod-http-image-filter
aws_instance.ec2_backend (remote-exec):   libnginx-mod-http-xslt-filter
aws_instance.ec2_backend (remote-exec):   libnginx-mod-mail
aws_instance.ec2_backend (remote-exec):   libnginx-mod-stream
aws_instance.ec2_backend (remote-exec):   libnginx-mod-stream-geoip2 libtiff5
aws_instance.ec2_backend (remote-exec):   libwebp7 libxpm4 nginx-common
aws_instance.ec2_backend (remote-exec):   nginx-core
aws_instance.ec2_backend (remote-exec): Suggested packages:
aws_instance.ec2_backend (remote-exec):   libgd-tools fcgiwrap nginx-doc
aws_instance.ec2_backend (remote-exec):   ssl-cert
aws_instance.ec2_backend (remote-exec): The following NEW packages will be installed:
aws_instance.ec2_backend (remote-exec):   fontconfig-config fonts-dejavu-core
aws_instance.ec2_backend (remote-exec):   libdeflate0 libfontconfig1 libgd3
aws_instance.ec2_backend (remote-exec):   libjbig0 libjpeg-turbo8 libjpeg8
aws_instance.ec2_backend (remote-exec):   libnginx-mod-http-geoip2
aws_instance.ec2_backend (remote-exec):   libnginx-mod-http-image-filter
aws_instance.ec2_backend (remote-exec):   libnginx-mod-http-xslt-filter
aws_instance.ec2_backend (remote-exec):   libnginx-mod-mail
aws_instance.ec2_backend (remote-exec):   libnginx-mod-stream
aws_instance.ec2_backend (remote-exec):   libnginx-mod-stream-geoip2 libtiff5
aws_instance.ec2_backend (remote-exec):   libwebp7 libxpm4 nginx nginx-common
aws_instance.ec2_backend (remote-exec):   nginx-core
aws_instance.ec2_backend (remote-exec): 0 upgraded, 20 newly installed, 0 to remove and 9 not upgraded.
aws_instance.ec2_backend (remote-exec): Need to get 2689 kB of archives.
aws_instance.ec2_backend (remote-exec): After this operation, 8335 kB of additional disk space will be used.
aws_instance.ec2_backend (remote-exec): 0% [Working]
aws_instance.ec2_backend (remote-exec): Get:1 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy/main amd64 fonts-dejavu-core all 2.37-2build1 [1041 kB]
aws_instance.ec2_backend (remote-exec): 0% [1 fonts-dejavu-core 0 B/1041 kB 0%]
aws_instance.ec2_backend (remote-exec): 32% [Working]
aws_instance.ec2_backend (remote-exec): Get:2 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy/main amd64 fontconfig-config all 2.13.1-4.2ubuntu5 [29.1 kB]
aws_instance.ec2_backend (remote-exec): 32% [2 fontconfig-config 0 B/29.1 kB 0%
aws_instance.ec2_backend (remote-exec): 34% [Working]
aws_instance.ec2_backend (remote-exec): Get:3 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy/main amd64 libdeflate0 amd64 1.10-2 [70.9 kB]
aws_instance.ec2_backend (remote-exec): 34% [3 libdeflate0 0 B/70.9 kB 0%]
aws_instance.ec2_backend (remote-exec): 37% [Working]
aws_instance.ec2_backend (remote-exec): Get:4 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy/main amd64 libfontconfig1 amd64 2.13.1-4.2ubuntu5 [131 kB]
aws_instance.ec2_backend (remote-exec): 37% [4 libfontconfig1 0 B/131 kB 0%]
aws_instance.ec2_backend (remote-exec): 42% [Working]
aws_instance.ec2_backend (remote-exec): Get:5 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy/main amd64 libjpeg-turbo8 amd64 2.1.2-0ubuntu1 [134 kB]
aws_instance.ec2_backend (remote-exec): 42% [5 libjpeg-turbo8 0 B/134 kB 0%]
aws_instance.ec2_backend (remote-exec): 47% [Working]
aws_instance.ec2_backend (remote-exec): Get:6 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy/main amd64 libjpeg8 amd64 8c-2ubuntu10 [2264 B]
aws_instance.ec2_backend (remote-exec): 47% [6 libjpeg8 0 B/2264 B 0%]
aws_instance.ec2_backend (remote-exec): 48% [Working]
aws_instance.ec2_backend (remote-exec): Get:7 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-updates/main amd64 libjbig0 amd64 2.1-3.1ubuntu0.22.04.1 [29.2 kB]
aws_instance.ec2_backend (remote-exec): 48% [7 libjbig0 0 B/29.2 kB 0%]
aws_instance.ec2_backend (remote-exec): 50% [Working]
aws_instance.ec2_backend (remote-exec): Get:8 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy/main amd64 libwebp7 amd64 1.2.2-2 [206 kB]
aws_instance.ec2_backend (remote-exec): 50% [8 libwebp7 0 B/206 kB 0%]
aws_instance.ec2_backend (remote-exec): 57% [Working]
aws_instance.ec2_backend (remote-exec): Get:9 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-updates/main amd64 libtiff5 amd64 4.3.0-6ubuntu0.3 [183 kB]
aws_instance.ec2_backend (remote-exec): 57% [9 libtiff5 0 B/183 kB 0%]
aws_instance.ec2_backend (remote-exec): 63% [Working]
aws_instance.ec2_backend (remote-exec): Get:10 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-updates/main amd64 libxpm4 amd64 1:3.5.12-1ubuntu0.22.04.1 [36.4 kB]
aws_instance.ec2_backend (remote-exec): 63% [10 libxpm4 0 B/36.4 kB 0%]
aws_instance.ec2_backend (remote-exec): 65% [Working]
aws_instance.ec2_backend (remote-exec): Get:11 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy/main amd64 libgd3 amd64 2.3.0-2ubuntu2 [129 kB]
aws_instance.ec2_backend (remote-exec): 65% [11 libgd3 0 B/129 kB 0%]
aws_instance.ec2_backend (remote-exec): 70% [Working]
aws_instance.ec2_backend (remote-exec): Get:12 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-updates/main amd64 nginx-common all 1.18.0-6ubuntu14.3 [40.0 kB]
aws_instance.ec2_backend (remote-exec): 70% [12 nginx-common 0 B/40.0 kB 0%]
aws_instance.ec2_backend (remote-exec): 72% [Working]
aws_instance.ec2_backend (remote-exec): Get:13 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-updates/main amd64 libnginx-mod-http-geoip2 amd64 1.18.0-6ubuntu14.3 [11.9 kB]
aws_instance.ec2_backend (remote-exec): 72% [13 libnginx-mod-http-geoip2 0 B/11
aws_instance.ec2_backend (remote-exec): 74% [Working]
aws_instance.ec2_backend (remote-exec): Get:14 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-updates/main amd64 libnginx-mod-http-image-filter amd64 1.18.0-6ubuntu14.3 [15.4 kB]
aws_instance.ec2_backend (remote-exec): 74% [14 libnginx-mod-http-image-filter
aws_instance.ec2_backend (remote-exec): 75% [Working]
aws_instance.ec2_backend (remote-exec): Get:15 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-updates/main amd64 libnginx-mod-http-xslt-filter amd64 1.18.0-6ubuntu14.3 [13.7 kB]
aws_instance.ec2_backend (remote-exec): 75% [15 libnginx-mod-http-xslt-filter 0
aws_instance.ec2_backend (remote-exec): 77% [Working]
aws_instance.ec2_backend (remote-exec): Get:16 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-updates/main amd64 libnginx-mod-mail amd64 1.18.0-6ubuntu14.3 [45.7 kB]
aws_instance.ec2_backend (remote-exec): 77% [16 libnginx-mod-mail 0 B/45.7 kB 0
aws_instance.ec2_backend (remote-exec): 79% [Working]
aws_instance.ec2_backend (remote-exec): Get:17 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-updates/main amd64 libnginx-mod-stream amd64 1.18.0-6ubuntu14.3 [72.8 kB]
aws_instance.ec2_backend (remote-exec): 79% [17 libnginx-mod-stream 0 B/72.8 kB
aws_instance.ec2_backend (remote-exec): 82% [Working]
aws_instance.ec2_backend (remote-exec): Get:18 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-updates/main amd64 libnginx-mod-stream-geoip2 amd64 1.18.0-6ubuntu14.3 [10.1 kB]
aws_instance.ec2_backend (remote-exec): 82% [18 libnginx-mod-stream-geoip2 0 B/
aws_instance.ec2_backend (remote-exec): 84% [Working]
aws_instance.ec2_backend (remote-exec): Get:19 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-updates/main amd64 nginx-core amd64 1.18.0-6ubuntu14.3 [482 kB]
aws_instance.ec2_backend (remote-exec): 84% [19 nginx-core 0 B/482 kB 0%]
aws_instance.ec2_backend (remote-exec): 99% [Working]
aws_instance.ec2_backend (remote-exec): Get:20 http://eu-west-1.ec2.archive.ubuntu.com/ubuntu jammy-updates/main amd64 nginx amd64 1.18.0-6ubuntu14.3 [3882 B]
aws_instance.ec2_backend (remote-exec): 99% [20 nginx 0 B/3882 B 0%]
aws_instance.ec2_backend (remote-exec): 100% [Working]
aws_instance.ec2_backend (remote-exec): Fetched 2689 kB in 0s (23.2 MB/s)
aws_instance.ec2_backend (remote-exec): Preconfiguring packages ...
aws_instance.ec2_backend (remote-exec): Selecting previously unselected package fonts-dejavu-core.
aws_instance.ec2_backend (remote-exec): (Reading database ...
aws_instance.ec2_backend (remote-exec): (Reading database ... 5%
aws_instance.ec2_backend (remote-exec): (Reading database ... 10%
aws_instance.ec2_backend (remote-exec): (Reading database ... 15%
aws_instance.ec2_backend (remote-exec): (Reading database ... 20%
aws_instance.ec2_backend (remote-exec): (Reading database ... 25%
aws_instance.ec2_backend (remote-exec): (Reading database ... 30%
aws_instance.ec2_backend (remote-exec): (Reading database ... 35%
aws_instance.ec2_backend (remote-exec): (Reading database ... 40%
aws_instance.ec2_backend (remote-exec): (Reading database ... 45%
aws_instance.ec2_backend (remote-exec): (Reading database ... 50%
aws_instance.ec2_backend (remote-exec): (Reading database ... 55%
aws_instance.ec2_backend (remote-exec): (Reading database ... 60%
aws_instance.ec2_backend (remote-exec): (Reading database ... 65%
aws_instance.ec2_backend (remote-exec): (Reading database ... 70%
aws_instance.ec2_backend (remote-exec): (Reading database ... 75%
aws_instance.ec2_backend (remote-exec): (Reading database ... 80%
aws_instance.ec2_backend (remote-exec): (Reading database ... 85%
aws_instance.ec2_backend (remote-exec): (Reading database ... 90%
aws_instance.ec2_backend (remote-exec): (Reading database ... 95%
aws_instance.ec2_backend (remote-exec): (Reading database ... 100%
aws_instance.ec2_backend (remote-exec): (Reading database ... 63567 files and directories currently installed.)
aws_instance.ec2_backend (remote-exec): Preparing to unpack .../00-fonts-dejavu-core_2.37-2build1_all.deb ...
aws_instance.ec2_backend (remote-exec): Unpacking fonts-dejavu-core (2.37-2build1) ...
aws_instance.ec2_backend (remote-exec): Selecting previously unselected package fontconfig-config.
aws_instance.ec2_backend (remote-exec): Preparing to unpack .../01-fontconfig-config_2.13.1-4.2ubuntu5_all.deb ...
aws_instance.ec2_backend (remote-exec): Unpacking fontconfig-config (2.13.1-4.2ubuntu5) ...
aws_instance.ec2_backend (remote-exec): Selecting previously unselected package libdeflate0:amd64.
aws_instance.ec2_backend (remote-exec): Preparing to unpack .../02-libdeflate0_1.10-2_amd64.deb ...
aws_instance.ec2_backend (remote-exec): Unpacking libdeflate0:amd64 (1.10-2) ...
aws_instance.ec2_backend (remote-exec): Selecting previously unselected package libfontconfig1:amd64.
aws_instance.ec2_backend (remote-exec): Preparing to unpack .../03-libfontconfig1_2.13.1-4.2ubuntu5_amd64.deb ...
aws_instance.ec2_backend (remote-exec): Unpacking libfontconfig1:amd64 (2.13.1-4.2ubuntu5) ...
aws_instance.ec2_backend (remote-exec): Selecting previously unselected package libjpeg-turbo8:amd64.
aws_instance.ec2_backend (remote-exec): Preparing to unpack .../04-libjpeg-turbo8_2.1.2-0ubuntu1_amd64.deb ...
aws_instance.ec2_backend (remote-exec): Unpacking libjpeg-turbo8:amd64 (2.1.2-0ubuntu1) ...
aws_instance.ec2_backend (remote-exec): Selecting previously unselected package libjpeg8:amd64.
aws_instance.ec2_backend (remote-exec): Preparing to unpack .../05-libjpeg8_8c-2ubuntu10_amd64.deb ...
aws_instance.ec2_backend (remote-exec): Unpacking libjpeg8:amd64 (8c-2ubuntu10) ...
aws_instance.ec2_backend (remote-exec): Selecting previously unselected package libjbig0:amd64.
aws_instance.ec2_backend (remote-exec): Preparing to unpack .../06-libjbig0_2.1-3.1ubuntu0.22.04.1_amd64.deb ...
aws_instance.ec2_backend (remote-exec): Unpacking libjbig0:amd64 (2.1-3.1ubuntu0.22.04.1) ...
aws_instance.ec2_backend (remote-exec): Selecting previously unselected package libwebp7:amd64.
aws_instance.ec2_backend (remote-exec): Preparing to unpack .../07-libwebp7_1.2.2-2_amd64.deb ...
aws_instance.ec2_backend (remote-exec): Unpacking libwebp7:amd64 (1.2.2-2) ...
aws_instance.ec2_backend (remote-exec): Selecting previously unselected package libtiff5:amd64.
aws_instance.ec2_backend (remote-exec): Preparing to unpack .../08-libtiff5_4.3.0-6ubuntu0.3_amd64.deb ...
aws_instance.ec2_backend (remote-exec): Unpacking libtiff5:amd64 (4.3.0-6ubuntu0.3) ...
aws_instance.ec2_backend (remote-exec): Selecting previously unselected package libxpm4:amd64.
aws_instance.ec2_backend (remote-exec): Preparing to unpack .../09-libxpm4_1%3a3.5.12-1ubuntu0.22.04.1_amd64.deb ...
aws_instance.ec2_backend (remote-exec): Unpacking libxpm4:amd64 (1:3.5.12-1ubuntu0.22.04.1) ...
aws_instance.ec2_backend (remote-exec): Selecting previously unselected package libgd3:amd64.
aws_instance.ec2_backend (remote-exec): Preparing to unpack .../10-libgd3_2.3.0-2ubuntu2_amd64.deb ...
aws_instance.ec2_backend (remote-exec): Unpacking libgd3:amd64 (2.3.0-2ubuntu2) ...
aws_instance.ec2_backend (remote-exec): Selecting previously unselected package nginx-common.
aws_instance.ec2_backend (remote-exec): Preparing to unpack .../11-nginx-common_1.18.0-6ubuntu14.3_all.deb ...
aws_instance.ec2_backend (remote-exec): Unpacking nginx-common (1.18.0-6ubuntu14.3) ...
aws_instance.ec2_backend (remote-exec): Selecting previously unselected package libnginx-mod-http-geoip2.
aws_instance.ec2_backend (remote-exec): Preparing to unpack .../12-libnginx-mod-http-geoip2_1.18.0-6ubuntu14.3_amd64.deb ...
aws_instance.ec2_backend (remote-exec): Unpacking libnginx-mod-http-geoip2 (1.18.0-6ubuntu14.3) ...
aws_instance.ec2_backend (remote-exec): Selecting previously unselected package libnginx-mod-http-image-filter.
aws_instance.ec2_backend (remote-exec): Preparing to unpack .../13-libnginx-mod-http-image-filter_1.18.0-6ubuntu14.3_amd64.deb ...
aws_instance.ec2_backend (remote-exec): Unpacking libnginx-mod-http-image-filter (1.18.0-6ubuntu14.3) ...
aws_instance.ec2_backend (remote-exec): Selecting previously unselected package libnginx-mod-http-xslt-filter.
aws_instance.ec2_backend (remote-exec): Preparing to unpack .../14-libnginx-mod-http-xslt-filter_1.18.0-6ubuntu14.3_amd64.deb ...
aws_instance.ec2_backend (remote-exec): Unpacking libnginx-mod-http-xslt-filter (1.18.0-6ubuntu14.3) ...
aws_instance.ec2_backend (remote-exec): Selecting previously unselected package libnginx-mod-mail.
aws_instance.ec2_backend (remote-exec): Preparing to unpack .../15-libnginx-mod-mail_1.18.0-6ubuntu14.3_amd64.deb ...
aws_instance.ec2_backend (remote-exec): Unpacking libnginx-mod-mail (1.18.0-6ubuntu14.3) ...
aws_instance.ec2_backend (remote-exec): Selecting previously unselected package libnginx-mod-stream.
aws_instance.ec2_backend (remote-exec): Preparing to unpack .../16-libnginx-mod-stream_1.18.0-6ubuntu14.3_amd64.deb ...
aws_instance.ec2_backend (remote-exec): Unpacking libnginx-mod-stream (1.18.0-6ubuntu14.3) ...
aws_instance.ec2_backend (remote-exec): Selecting previously unselected package libnginx-mod-stream-geoip2.
aws_instance.ec2_backend (remote-exec): Preparing to unpack .../17-libnginx-mod-stream-geoip2_1.18.0-6ubuntu14.3_amd64.deb ...
aws_instance.ec2_backend (remote-exec): Unpacking libnginx-mod-stream-geoip2 (1.18.0-6ubuntu14.3) ...
aws_instance.ec2_backend (remote-exec): Selecting previously unselected package nginx-core.
aws_instance.ec2_backend (remote-exec): Preparing to unpack .../18-nginx-core_1.18.0-6ubuntu14.3_amd64.deb ...
aws_instance.ec2_backend (remote-exec): Unpacking nginx-core (1.18.0-6ubuntu14.3) ...
aws_instance.ec2_backend (remote-exec): Selecting previously unselected package nginx.
aws_instance.ec2_backend (remote-exec): Preparing to unpack .../19-nginx_1.18.0-6ubuntu14.3_amd64.deb ...
aws_instance.ec2_backend (remote-exec): Unpacking nginx (1.18.0-6ubuntu14.3) ...
aws_instance.ec2_backend (remote-exec): Setting up libxpm4:amd64 (1:3.5.12-1ubuntu0.22.04.1) ...
aws_instance.ec2_backend (remote-exec): Setting up libdeflate0:amd64 (1.10-2) ...
aws_instance.ec2_backend (remote-exec): Setting up nginx-common (1.18.0-6ubuntu14.3) ...
aws_instance.ec2_backend (remote-exec): Created symlink /etc/systemd/system/multi-user.target.wants/nginx.service → /lib/systemd/system/nginx.service.
aws_instance.ec2_backend (remote-exec): Setting up libjbig0:amd64 (2.1-3.1ubuntu0.22.04.1) ...
aws_instance.ec2_backend (remote-exec): Setting up libnginx-mod-http-xslt-filter (1.18.0-6ubuntu14.3) ...
aws_instance.ec2_backend (remote-exec): Setting up fonts-dejavu-core (2.37-2build1) ...
aws_instance.ec2_backend (remote-exec): Setting up libjpeg-turbo8:amd64 (2.1.2-0ubuntu1) ...
aws_instance.ec2_backend (remote-exec): Setting up libwebp7:amd64 (1.2.2-2) ...
aws_instance.ec2_backend (remote-exec): Setting up libnginx-mod-http-geoip2 (1.18.0-6ubuntu14.3) ...
aws_instance.ec2_backend (remote-exec): Setting up libjpeg8:amd64 (8c-2ubuntu10) ...
aws_instance.ec2_backend (remote-exec): Setting up libnginx-mod-mail (1.18.0-6ubuntu14.3) ...
aws_instance.ec2_backend (remote-exec): Setting up fontconfig-config (2.13.1-4.2ubuntu5) ...
aws_instance.ec2_backend (remote-exec): Setting up libnginx-mod-stream (1.18.0-6ubuntu14.3) ...
aws_instance.ec2_backend (remote-exec): Setting up libtiff5:amd64 (4.3.0-6ubuntu0.3) ...
aws_instance.ec2_backend (remote-exec): Setting up libfontconfig1:amd64 (2.13.1-4.2ubuntu5) ...
aws_instance.ec2_backend (remote-exec): Setting up libnginx-mod-stream-geoip2 (1.18.0-6ubuntu14.3) ...
aws_instance.ec2_backend (remote-exec): Setting up libgd3:amd64 (2.3.0-2ubuntu2) ...
aws_instance.ec2_backend (remote-exec): Setting up libnginx-mod-http-image-filter (1.18.0-6ubuntu14.3) ...
aws_instance.ec2_backend (remote-exec): Setting up nginx-core (1.18.0-6ubuntu14.3) ...
aws_instance.ec2_backend (remote-exec):  * Upgrading binary nginx
aws_instance.ec2_backend (remote-[ OK ]
aws_instance.ec2_backend (remote-exec): Setting up nginx (1.18.0-6ubuntu14.3) ...
aws_instance.ec2_backend (remote-exec): Processing triggers for ufw (0.36.1-4build1) ...
aws_instance.ec2_backend: Still creating... [1m22s elapsed]
aws_instance.ec2_backend (remote-exec): Processing triggers for man-db (2.10.2-1) ...
aws_instance.ec2_backend (remote-exec): Processing triggers for libc-bin (2.35-0ubuntu3.1) ...
aws_instance.ec2_backend (remote-exec): Scanning processes... [                ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [                ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [                ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [                ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [                ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [                ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [                ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [                ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=               ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=               ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=               ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=               ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=               ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=               ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=               ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [==              ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [==              ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [==              ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [==              ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [==              ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [==              ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [==              ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [===             ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [===             ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [===             ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [===             ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [===             ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [===             ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [===             ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [====            ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [====            ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [====            ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [====            ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [====            ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [====            ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [====            ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [====            ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=====           ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=====           ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=====           ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=====           ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=====           ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=====           ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=====           ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [======          ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [======          ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [======          ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [======          ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [======          ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [======          ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [======          ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=======         ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=======         ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=======         ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=======         ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=======         ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=======         ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=======         ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [========        ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [========        ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [========        ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [========        ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [========        ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [========        ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [========        ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [========        ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=========       ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=========       ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=========       ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=========       ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=========       ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=========       ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=========       ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [==========      ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [==========      ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [==========      ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [==========      ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [==========      ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [==========      ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [==========      ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [===========     ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [===========     ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [===========     ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [===========     ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [===========     ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [===========     ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [===========     ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [============    ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [============    ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [============    ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [============    ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [============    ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [============    ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [============    ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [============    ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=============   ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=============   ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=============   ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=============   ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=============   ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=============   ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=============   ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [==============  ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [==============  ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [==============  ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [==============  ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [==============  ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [==============  ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [==============  ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=============== ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=============== ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=============== ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=============== ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=============== ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=============== ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [=============== ]
aws_instance.ec2_backend (remote-exec): Scanning processes... [================]
aws_instance.ec2_backend (remote-exec): Scanning processes...
aws_instance.ec2_backend (remote-exec): Scanning linux images... [             ]
aws_instance.ec2_backend (remote-exec): Scanning linux images... [====         ]
aws_instance.ec2_backend (remote-exec): Scanning linux images... [========     ]
aws_instance.ec2_backend (remote-exec): Scanning linux images... [=============]
aws_instance.ec2_backend (remote-exec): Scanning linux images...

aws_instance.ec2_backend (remote-exec): Running kernel seems to be up-to-date.

aws_instance.ec2_backend (remote-exec): No services need to be restarted.

aws_instance.ec2_backend (remote-exec): No containers need to be restarted.

aws_instance.ec2_backend (remote-exec): No user sessions are running outdated
aws_instance.ec2_backend (remote-exec):  binaries.

aws_instance.ec2_backend (remote-exec): No VM guests are running outdated
aws_instance.ec2_backend (remote-exec):  hypervisor (qemu) binaries on this
aws_instance.ec2_backend (remote-exec):  host.
aws_instance.ec2_backend: Creation complete after 1m26s [id=i-0e656dbf75990aed2]
data.aws_instance.back_ip: Reading...
data.aws_instance.back_ip: Read complete after 1s [id=i-0e656dbf75990aed2]
null_resource.change_front_nginx_conf: Creating...
null_resource.change_front_nginx_conf: Provisioning with 'remote-exec'...
null_resource.change_front_nginx_conf (remote-exec): Connecting to remote host via SSH...
null_resource.change_front_nginx_conf (remote-exec):   Host: 34.248.193.111
null_resource.change_front_nginx_conf (remote-exec):   User: ubuntu
null_resource.change_front_nginx_conf (remote-exec):   Password: false
null_resource.change_front_nginx_conf (remote-exec):   Private key: true
null_resource.change_front_nginx_conf (remote-exec):   Certificate: false
null_resource.change_front_nginx_conf (remote-exec):   SSH Agent: false
null_resource.change_front_nginx_conf (remote-exec):   Checking Host Key: false
null_resource.change_front_nginx_conf (remote-exec):   Target Platform: unix
null_resource.change_front_nginx_conf (remote-exec): Connected!
null_resource.change_front_nginx_conf: Creation complete after 2s [id=914085613]

Apply complete! Resources: 7 added, 0 changed, 0 destroyed.
PS D:\first-TMS-repo\Terraform\HW_Lesson_43_Terr_modules\ec2-instances>
