
variable "resource_group_location" {
  default     = "centralindia"
  description = "Location of the resource group."
}

variable "resource_group_name" {
  default     = "vivek-multiple-linux-vm-rg"
  description = "Resource group name."
}

variable "count_vms" {
  default     = 2
  description = "Number of vm resources to be cteated."
}