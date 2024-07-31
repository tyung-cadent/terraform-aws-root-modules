variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "env" {
  type    = string
  default = "test"
}
################################################################################
# dhcp options set
################################################################################
variable "create_dhcp_options" {
  type    = bool
  default = true
}

variable "dhcp_options_name" {
  type    = string
  default = "test-dhcp-options"
}

variable "dhcp_options_tags" {
  type    = map(string)
  default = { tag1 : "testa", tag2 : "testb" }
}

variable "dhcp_option_set_id" {
  type    = string
  default = ""
}

variable "dhcp_options_domain_name_servers" {
  type    = list(string)
  default = ["amazonprovideddns"]
}

variable "dhcp_options_netbios_node_type" {
  type    = string
  default = ""
}

variable "dhcp_options_ntp_servers" {
  type    = string
  default = ""
}

variable "dhcp_options_netbios_name_servers" {
  type    = string
  default = ""
}

################################################################################
# vpc
################################################################################
variable "create_vpc" {
  type    = bool
  default = true
}

variable "vpc_cidr" {
  type    = string
  default = "10.160.0.0/16"
}

variable "vpc_name" {
  type    = string
  default = "vpc_10_160"
}

variable "vpc_tags" {
  type    = map(string)
  default = { "tag1" : "test_tag" }
}


################################################################################
# tgw 
################################################################################
variable "create_tgw_attachment" {
  type    = bool
  default = false
}

variable "create_tgw_subnets" {
  type    = bool
  default = true
}

variable "tgw_tags" {
  type    = map(string)
  default = {}
}

################################################################################
# subnets
################################################################################
variable "private_subnet_cidrs" {
  description = "key is az name, value is cidr range"
  type        = map(string)
  default     = { "us-east-1a" : "10.160.16.0/20", "us-east-1b" : "10.160.32.0/20", "us-east-1c" : "10.160.48.0/20" }
}

variable "public_subnet_cidrs" {
  description = "key is az name, value is cidr range"
  type        = map(string)
  default     = { "us-east-1a" : "10.160.96.0/20", "us-east-1b" : "10.160.112.0/20", "us-east-1c" : "10.160.128.0/20" }
}


################################################################################
# nat and internet gateway
################################################################################
variable "create_nat_gateway" {
  type    = bool
  default = true
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

variable "transit_gateway_id" {
  type    = string
  default = ""
}

variable "tgw_destination_cidr_block" {
  description = "enter destination cidr as the key and tgw id as the value"
  type        = map(string)
  default     = {}
}

variable "tgw_destination_prefix_list" {
  description = "enter destination cidr as the key and tgw id as the value"
  type        = map(string)
  default     = {}
}

variable "public_tgw_destination_cidr_block" {
  description = "enter destination cidr as the key and tgw id as the value"
  type        = map(string)
  default     = {}
}

variable "private_route_table_tags" {
  type    = map(string)
  default = { "tag1" : "test_tag" }
}

variable "public_route_table_tags" {
  type    = map(string)
  default = { "tag1" : "test_tag" }
}