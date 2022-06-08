#############################################################################
# VARIABLES
#############################################################################

variable "resource_group_name" {
  type    = string
  default = "vivek-vnet-rg"
}

variable "vnet_name" {
  type    = string
  default = "vivek-vnet"
}

variable "location" {
  type    = string
  default = "centralindia"
}


variable "vnet_cidr_range" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet_prefixes" {
  type    = list(string)
  default = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "subnet_names" {
  type    = list(string)
  default = ["web", "database"]
}
