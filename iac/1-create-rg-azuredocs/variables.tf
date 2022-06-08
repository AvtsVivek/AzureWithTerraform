variable "resource_group_name_prefix" {
  default     = "vivek"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "resource_group_location" {
  default     = "centralindia"
  description = "Location of the resource group."
}