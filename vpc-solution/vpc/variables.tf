variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "env" {
  type    = string
  default = "dev"
}

################################################################################
# dhcp options set
################################################################################
variable "create_dhcp_options" {
  type    = bool
  default = false
}

variable "dhcp_options_name" {
  type    = string
  default = ""
}

variable "dhcp_options_tags" {
  type    = map(string)
  default = {}
}

################################################################################
# vpc
################################################################################
variable "create_vpc" {
  type    = bool
  default = false
}

variable "vpc_cidr" {
  type    = string
  default = ""
}

variable "vpc_name" {
  type    = string
  default = ""
}

variable "vpc_tags" {
  type    = map(string)
  default = {}
}


################################################################################
# tgw 
################################################################################
variable "create_tgw_subnets" {
  type    = bool
  default = false
}

variable "tgw_tags" {
  type    = map(string)
  default = {}
}

################################################################################
# subnets
################################################################################
variable "private_subnet_cidrs" {
  description = "key is az name, value is cidr range. ie {us-east-1a: \"10.160.16.0/20\"}"
  type        = map(string)
  default     = {}
}

variable "public_subnet_cidrs" {
  description = "key is az name, value is cidr range. ie {us-east-1a: \"10.160.16.0/20\"}"
  type        = map(string)
  default     = {}
}

variable "create_private_subnets" {
  type    = bool
  default = false
}

variable "create_public_subnets" {
  type    = bool
  default = false
}


################################################################################
# nat and internet gateway
################################################################################
variable "create_nat_gateway" {
  type    = bool
  default = false
}

variable "nat_gateway_connectivity_type" {
  type    = string
  default = "public"
}

variable "create_igw" {
  type    = bool
  default = true
}

variable "igw_tags" {
  type    = map(string)
  default = {}
}

variable "nat_gateway_tags" {
  type    = map(string)
  default = {}
}

################################################################################
# private and public route table and routes
################################################################################
variable "default_route" {
  type    = string
  default = "0.0.0.0/0"
}

variable "tgw_destination_cidr_block" {
  description = "use destination cidr range as key and tgw id as value"
  type        = map(string)
  default     = {}
}

variable "tgw_destination_prefix_list" {
  description = "use destination prefix list id as key and tgw id as value"
  type        = map(string)
  default     = {}
}

variable "public_tgw_destination_cidr_block" {
  description = "use destination cidr range as key and tgw id as value"
  type        = map(string)
  default     = {}
}
          
variable "public_tgw_destination_prefix_list" {
  description = "use destination prefix list id as key and tgw id as value"
  type        = map(string)
  default     = {}
}


variable "private_route_table_tags" {
  type    = map(string)
  default = {}
}

variable "public_route_table_tags" {
  type    = map(string)
  default = {}
}