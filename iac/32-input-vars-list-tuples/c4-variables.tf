variable "resource_group_location" {
  default     = "centralindia"
  type        = string
  description = "Location of the resource group."
}

variable "resource_group_name" {
  default     = "vivek-rg"
  type        = string
  description = "Resource group name."
}

variable "vnet-name" {
  default     = "vivek-1-vnet"
  description = "Virtual network name."
}

variable "virtual_network_address_space" {
  description = "Virtual Network Address Space"
  type        = list(string)
  default     = ["10.0.0.0/16", "10.1.0.0/16", "10.2.0.0/16"]
}


