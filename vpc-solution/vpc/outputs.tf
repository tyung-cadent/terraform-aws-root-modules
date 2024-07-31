output "availability_zone_names" {
  value = module.vpc.availability_zone_names
}

output "availability_zone_ids" {
  value = module.vpc.availability_zone_ids
}

output "eip_addresses" {
  value = module.vpc.eip_addresses
}

output "eip_ids" {
  value = module.vpc.eip_ids
}

output "private_subnets" {
  value = module.vpc.private_subnets
}

output "public_subnets" {
  value = module.vpc.public_subnets
}

output "tgw_subnet_id" {
  value = module.vpc.tgw_subnet_id
}

output "nat_gateway" {
  value = module.vpc.nat_gateway
}

output "private_route_table" {
  value = module.vpc.private_route_table
}

output "public_route_table" {
  value = module.vpc.public_route_table
}

output "private_tgw_routes" {
  value = module.vpc.private_tgw_routes
}

output "flat_private_tgw_routes" {
  value = module.vpc.flat_private_tgw_routes
}


output "prefix_list_routes" {
  value = module.vpc.prefix_list_routes
}

output "flat_prefix_list_routes" {
  value = module.vpc.flat_prefix_list_routes
}

output "public_tgw_routes" {
  value = module.vpc.public_tgw_routes
}

output "flat_public_tgw_routes" {
  value = module.vpc.flat_public_tgw_routes
}

output "public_prefix_list_routes" {
  value = module.vpc.public_prefix_list_routes
}

output "flat_public_prefix_list_routes" {
  value = module.vpc.flat_public_prefix_list_routes
}