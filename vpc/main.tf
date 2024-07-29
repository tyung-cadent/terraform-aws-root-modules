module "dhcp_option_set" {
  source                           = "git::https://github.com/tyung-cadent/terraform-aws-module-singular.git//dhcp_option_set"
  create_dhcp_options              = var.CREATE_DHCP_OPTIONS
  dhcp_options_name                = var.DHCP_OPTIONS_NAME
  aws_region                       = var.AWS_REGION
  dhcp_options_domain_name_servers = var.DHCP_OPTIONS_DOMAIN_NAME_SERVERS
}


module "vpc" {
  source             = "git::https://github.com/tyung-cadent/terraform-aws-module-singular.git//vpc"
  vpc_cidr           = var.VPC_CIDR
  create_vpc         = var.CREATE_VPC
  vpc_name           = var.VPC_NAME
  vpc_tags           = var.VPC_TAGS
  dhcp_option_set_id = var.CREATE_DHCP_OPTIONS ? module.dhcp_option_set.dhcp_option_set_id : var.DHCP_OPTION_SET_ID
  depends_on         = [module.dhcp_option_set]
}


module "private_subnet" {
  source        = "git::https://github.com/tyung-cadent/terraform-aws-module-singular.git//subnet"
  subnet_cidrs  = var.PRIVATE_SUBNET_CIDRS
  subnet_vpc_id = module.vpc.vpc_id
}


module "public_subnet" {
  source        = "git::https://github.com/tyung-cadent/terraform-aws-module-singular.git//subnet"
  subnet_cidrs  = var.PUBLIC_SUBNET_CIDRS
  subnet_vpc_id = module.vpc.vpc_id
}


module "tgw_subnet" {
  source        = "git::https://github.com/tyung-cadent/terraform-aws-module-singular.git//tgw_subnet"
  vpc_id = module.vpc.vpc_id
}
