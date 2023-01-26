output "az_zones_ids" {
  value = data.aws_availability_zones.available.zone_ids
}

output "vpc_database_route_table_ids" {
  value = module.vpc.database_route_table_ids
}

output "vpc_subnets_public" {
  value = module.vpc.public_subnets
}

output "vpc_subnets_private" {
  value = module.vpc.private_subnets
}

output "my_vpc_id" {
  value = module.vpc.vpc_id
}
