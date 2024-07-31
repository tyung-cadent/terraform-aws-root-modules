variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "ENV" {
  type    = string
  default = "dev"
}

variable "remote_access_vpc_id" {
  type    = string
  default = "vpc-020cc75195f26cf15"
}

variable "default_security_group_egress_rules" {
  type = map(object({
    cidr_ipv4                    = string
    description                  = string
    from_port                    = string
    ip_protocol                  = string
    to_port                      = string
    prefix_list_id               = string
    referenced_security_group_id = string
  }))
  default = {
    allow_all = {
      cidr_ipv4                    = "0.0.0.0/0"
      description                  = "allow all"
      from_port                    = ""
      ip_protocol                  = "-1"
      to_port                      = ""
      prefix_list_id               = ""
      referenced_security_group_id = ""
    }

  }
}
################################################################################
# internal_remote_access
################################################################################

variable "internal_remote_access_security_group_name" {
  type    = string
  default = "internal-remote-access"
}

variable "internal_remote_access_security_group_description" {
  type    = string
  default = "test security group"
}

variable "internal_remote_access_security_group_tags" {
  type    = map(any)
  default = {}
}

variable "internal_remote_access_security_group_ingress_rules" {
  type = map(object({
    cidr_ipv4                    = string
    description                  = string
    from_port                    = string
    ip_protocol                  = string
    to_port                      = string
    prefix_list_id               = string
    referenced_security_group_id = string
  }))
  default = {
    ssh = {
      cidr_ipv4                    = "10.0.0.0/8"
      description                  = "Allow SSH access from source IP CIDR 10.0.0.0/8"
      from_port                    = "22"
      ip_protocol                  = "tcp"
      to_port                      = "22"
      prefix_list_id               = ""
      referenced_security_group_id = ""
    }
    rdp = {
      cidr_ipv4                    = "10.0.0.0/8"
      description                  = "Allow RDP access from source IP CIDR 10.0.0.0/8"
      from_port                    = "3389"
      ip_protocol                  = "tcp"
      to_port                      = "3389"
      prefix_list_id               = ""
      referenced_security_group_id = ""
    }
    http = {
      cidr_ipv4                    = "10.0.0.0/8"
      description                  = "Allow HTTP access from source IP CIDR 10.0.0.0/8"
      from_port                    = "80"
      ip_protocol                  = "tcp"
      to_port                      = "80"
      prefix_list_id               = ""
      referenced_security_group_id = ""
    }
    https = {
      cidr_ipv4                    = "10.0.0.0/8"
      description                  = "Allow HTTPS access from source IP CIDR 10.0.0.0/8"
      from_port                    = "443"
      ip_protocol                  = "tcp"
      to_port                      = "443"
      prefix_list_id               = ""
      referenced_security_group_id = ""
    }
   
  }
}


################################################################################
# external_remote_access
################################################################################

variable "external_remote_access_security_group_name" {
  type    = string
  default = "external-remote-access"
}

variable "external_remote_access_security_group_description" {
  type    = string
  default = "test security group"
}

variable "external_remote_access_security_group_tags" {
  type    = map(any)
  default = {}
}

variable "external_remote_access_security_group_ingress_rules" {
  type = map(object({
    cidr_ipv4                    = string
    description                  = string
    from_port                    = string
    ip_protocol                  = string
    to_port                      = string
    prefix_list_id               = string
    referenced_security_group_id = string
  }))
  default = {
    ssh-philly= {
      cidr_ipv4                    = "144.121.156.210/32"
      description                  = "Allow SSH access from source IP CIDR 10.0.0.0/8"
      from_port                    = "22"
      ip_protocol                  = "tcp"
      to_port                      = "22"
      prefix_list_id               = ""
      referenced_security_group_id = ""
    }
    rdp = {
      cidr_ipv4                    = "144.121.156.210/32"
      description                  = "Allow RDP access from source IP CIDR 10.0.0.0/8"
      from_port                    = "3389"
      ip_protocol                  = "tcp"
      to_port                      = "3389"
      prefix_list_id               = ""
      referenced_security_group_id = ""
       
  }
}

}
