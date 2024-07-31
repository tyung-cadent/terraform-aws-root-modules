module "internal_remote_access" {
  # source = "git::https://dev.azure.com/cadent-tv/DevOps/_git/terraform-aws-modules//security_group/v1_00"
  source = "../../terraform-aws-module-singular/security-group"
  
  vpc_id                       = var.remote_access_vpc_id
  security_group_name          = var.internal_remote_access_security_group_name
  security_group_description   = var.internal_remote_access_security_group_description
  security_group_tags          = var.internal_remote_access_security_group_tags
  security_group_ingress_rules = var.internal_remote_access_security_group_ingress_rules
  security_group_egress_rules  = var.default_security_group_egress_rules
}

module "external_remote_access" {
  # source = "git::https://dev.azure.com/cadent-tv/DevOps/_git/terraform-aws-modules//security_group/v1_00"
  source = "../../terraform-aws-module-singular/security-group"
  
  vpc_id                       = var.remote_access_vpc_id
  security_group_name          = var.external_remote_access_security_group_name
  security_group_description   = var.external_remote_access_security_group_description
  security_group_tags          = var.external_remote_access_security_group_tags
  security_group_ingress_rules = var.external_remote_access_security_group_ingress_rules
  security_group_egress_rules  = var.default_security_group_egress_rules
}

