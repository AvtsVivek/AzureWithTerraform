# 1. Name of RG
variable "resoure_group_name" {
  description = "Resource Group Name"
  type        = string
  default     = "temp-rg"
}

# 2. Resource Group Location
variable "resoure_group_location" {
  description = "Resource Group Location"
  type        = string
  default     = "East US"
}

variable "resource_group_count" {
  description = "Number of Resource Groups"
  type        = number
  default     = 4
}

variable "some_prop" {
  type = map(string)
  default = {
    "dev1" = "raghu"
    "dev2" = "venu"
    "dev3" = "sita"

  }
}

# Call our Custom Terraform Module which we built earlier
module "azure_resource_group_vivek_rg" {
  count                    = var.resource_group_count
  source                   = "./modules/vivek-rg" # Mandatory
  resource_group_location  = "eastus"
  resource_group_name      = "myrg1"
  some_prop                = var.some_prop
  resource_group_count_var = count.index
}

output "resource_group_name_list" {
  value = module.azure_resource_group_vivek_rg
}

