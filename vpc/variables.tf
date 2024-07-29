variable "AWS_REGION" {
  type    = string
  default = "us-east-1"
}

variable "ENV" {
  type    = string
  default = "test"
}
################################################################################
# DHCP Options Set
################################################################################
variable "CREATE_DHCP_OPTIONS" {
  type    = bool
  default = true
}

variable "DHCP_OPTIONS_NAME" {
  type    = string
  default = "test-dhcp-options"
}

variable "DHCP_OPTIONS_TAGS" {
  type    = map(string)
  default = { tag1 : "testA", tag2 : "testB" }
}

variable "DHCP_OPTION_SET_ID" {
  type    = string
  default = ""
}

variable "DHCP_OPTIONS_DOMAIN_NAME_SERVERS" {
  type    = list(string)
  default = ["AmazonProvidedDNS"]
}

variable "DHCP_OPTIONS_NETBIOS_NODE_TYPE" {
  type    = string
  default = ""
}

variable "DHCP_OPTIONS_NTP_SERVERS" {
  type    = string
  default = ""
}

variable "DHCP_OPTIONS_NETBIOS_NAME_SERVERS" {
  type    = string
  default = ""
}

################################################################################
# VPC
################################################################################
variable "CREATE_VPC" {
  type    = bool
  default = true
}

variable "VPC_CIDR" {
  type    = string
  default = "10.160.0.0/16"
}

variable "VPC_NAME" {
  type    = string
  default = "vpc_10_160"
}

variable "VPC_TAGS" {
  type    = map(string)
  default = { "tag1" : "test_tag" }
}


################################################################################
# TGW 
################################################################################
variable "CREATE_TGW_ATTACHMENT" {
  type    = bool
  default = false
}

variable "CREATE_TGW_SUBNETS" {
  type    = bool
  default = true
}

variable "TGW_TAGS" {
  type    = map(string)
  default = {}
}

################################################################################
# Subnets
################################################################################
variable "PRIVATE_SUBNET_CIDRS" {
  description = "key is az name, Value is cidr range"
  type        = map(string)
  default     = { "us-east-1a" : "10.160.16.0/20", "us-east-1b" : "10.160.32.0/20", "us-east-1c" : "10.160.48.0/20" }
}

variable "PUBLIC_SUBNET_CIDRS" {
  description = "key is az name, Value is cidr range"
  type        = map(string)
  default     = { "us-east-1a" : "10.160.96.0/20", "us-east-1b" : "10.160.112.0/20", "us-east-1c" : "10.160.128.0/20" }
}


################################################################################
# Nat and Internet Gateway
################################################################################
variable "CREATE_NAT_GATEWAY" {
  type    = bool
  default = true
}

variable "NAT_GATEWAY_CONNECTIVITY_TYPE" {
  type    = string
  default = "public"
}

variable "CREATE_IGW" {
  type    = bool
  default = true
}

variable "IGW_TAGS" {
  type    = map(string)
  default = {}
}

variable "NAT_GATEWAY_TAGS" {
  type    = map(string)
  default = {}
}

################################################################################
# private and public route table and routes
################################################################################
variable "DEFAULT_ROUTE" {
  type    = string
  default = "0.0.0.0/0"
}

variable "TRANSIT_GATEWAY_ID" {
  type    = string
  default = ""
}

variable "TGW_DESTINATION_CIDR_BLOCK" {
  description = "Enter destination cidr as the key and tgw id as the value"
  type        = map(string)
  default     = {}
}

variable "TGW_DESTINATION_PREFIX_LIST" {
  description = "Enter destination cidr as the key and tgw id as the value"
  type        = map(string)
  default     = {}
}

variable "PUBLIC_TGW_DESTINATION_CIDR_BLOCK" {
  description = "Enter destination cidr as the key and tgw id as the value"
  type        = map(string)
  default     = {}
}

variable "PRIVATE_ROUTE_TABLE_TAGS" {
  type    = map(string)
  default = { "tag1" : "test_tag" }
}

variable "PUBLIC_ROUTE_TABLE_TAGS" {
  type    = map(string)
  default = { "tag1" : "test_tag" }
}