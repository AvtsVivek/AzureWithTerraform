variable "resource-group-location" {
  default     = "centralindia"
  type        = string
  description = "Location of the resource group."
}

variable "resource-group-name" {
  default     = "vivek-refer-other-var-rg"
  type        = string
  description = "Resource group name."
}

variable "vnet-name" {
  # Do not supply default value. Then at the time of planning or creation, terraform will ask your for it.
  #default = "vivek-1-vnet"
  type        = string
  description = "Virtual network name."
}
