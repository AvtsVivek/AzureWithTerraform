# Input Variables

# 1. Business Unit Name
variable "business_unit" {
  description = "Business Unit Name"
  type        = string
  default     = "hr"
}
# 2. Environment Name
variable "environment" {
  description = "Environment Name"
  type        = string
  default     = "poc"
}
# 3. Resource Group Name
variable "resoure_group_suffix" {
  description = "Resource Group Name"
  type        = string
  default     = "myrg"
}
# 4. Resource Group Location
variable "resoure_group_location" {
  description = "Resource Group Location"
  type        = string
  default     = "East US"
}

# 5. Virtual Network Name
variable "virtual_network_name" {
  description = "Virtual Network Name"
  type        = string
  default     = "myvnet"
}


locals {
  rg_name     = "${var.business_unit}-${var.environment}-${var.resoure_group_suffix}"
  rg_location = var.resoure_group_location
}

