
variable "resource_group_location" {
  #default     = "westus3"
  default = "centralindia"
  # default     = "centralus"
  description = "Location of the resource group."
}

variable "resource_group_name" {
  default     = "vivek-linux-vm-rg"
  description = "Resource group name."
}