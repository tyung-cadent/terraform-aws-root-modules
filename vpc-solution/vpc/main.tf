module "vpc" {
  source = "git::https://github.com/tyung-cadent/terraform-aws-module-solution//vpc"

  env = var.env

  create_dhcp_options = var.create_dhcp_options
  dhcp_options_name   = var.dhcp_options_name
  aws_region          = var.aws_region

  vpc_cidr   = var.vpc_cidr
  create_vpc = var.create_vpc
  vpc_name   = var.vpc_name
  vpc_tags   = var.vpc_tags

  create_tgw_subnets    = var.create_tgw_subnets
  tgw_tags              = var.tgw_tags

  create_igw = var.create_igw
  igw_tags   = var.igw_tags

  create_private_subnets = var.create_private_subnets
  create_public_subnets  = var.create_public_subnets
  private_subnet_cidrs   = var.private_subnet_cidrs
  public_subnet_cidrs    = var.public_subnet_cidrs

  create_nat_gateway            = var.create_nat_gateway
  nat_gateway_connectivity_type = var.nat_gateway_connectivity_type
  default_route                 = var.default_route

  tgw_destination_cidr_block        = var.tgw_destination_cidr_block
  tgw_destination_prefix_list       = var.tgw_destination_prefix_list
  public_tgw_destination_cidr_block = var.public_tgw_destination_cidr_block
  public_tgw_destination_prefix_list = var.public_tgw_destination_prefix_list
   
  
  nat_gateway_tags = var.nat_gateway_tags

  private_route_table_tags = var.private_route_table_tags
  public_route_table_tags  = var.public_route_table_tags

}

