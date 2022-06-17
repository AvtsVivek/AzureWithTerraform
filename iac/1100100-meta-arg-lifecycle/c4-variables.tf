variable "resource-group-location" {
  default     = "centralindia"
  description = "Location of the resource group."
}

variable "resource-group-name" {
  default     = "vivek-meta-arg-lifecycle-rg"
  description = "Resource group name."
}

variable "vnet-name" {
  # default = "vivek-1-vnet"
  default     = "vivek-2-vnet"
  description = "Virtual network name."
}
