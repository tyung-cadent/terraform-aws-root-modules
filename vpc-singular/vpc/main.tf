module "dhcp_option_set" {
  source                           = "git::https://github.com/tyung-cadent/terraform-aws-module-singular.git//dhcp_option_set"
  create_dhcp_options              = var.create_dhcp_options
  dhcp_options_name                = var.dhcp_options_name
  aws_region                       = var.aws_region
  dhcp_options_domain_name_servers = var.dhcp_options_domain_name_servers
}


module "vpc" {
  source             = "git::https://github.com/tyung-cadent/terraform-aws-module-singular.git//vpc"
  vpc_cidr           = var.vpc_cidr
  create_vpc         = var.create_vpc
  vpc_name           = var.vpc_name
  vpc_tags           = var.vpc_tags
  dhcp_option_set_id = var.create_dhcp_options ? module.dhcp_option_set.dhcp_option_set_id : var.dhcp_option_set_id
  depends_on         = [module.dhcp_option_set]
}


module "private_subnet" {
  source        = "git::https://github.com/tyung-cadent/terraform-aws-module-singular.git//subnet"
  subnet_cidrs  = var.private_subnet_cidrs
  subnet_vpc_id = module.vpc.vpc_id
}


module "public_subnet" {
  source        = "git::https://github.com/tyung-cadent/terraform-aws-module-singular.git//subnet"
  subnet_cidrs  = var.public_subnet_cidrs
  subnet_vpc_id = module.vpc.vpc_id
}


module "tgw_subnet" {
  source        = "git::https://github.com/tyung-cadent/terraform-aws-module-singular.git//tgw_subnet"
  vpc_id = module.vpc.vpc_id
}
