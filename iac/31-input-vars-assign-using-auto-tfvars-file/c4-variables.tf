variable "resource-group-location" {
  default     = "centralindia"
  type        = string
  description = "Location of the resource group."
}

variable "resource_group_name" {
  # For this demo, use environment variable to set the vars.
  default     = "vivek-rg"
  type        = string
  description = "Resource group name."
}


