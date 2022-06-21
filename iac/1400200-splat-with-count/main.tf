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

# 3. Resource-1: Azure Resource Group
resource "azurerm_resource_group" "myrg" {
  count    = 4
  name     = "${var.resoure_group_name}-${count.index}-rg"
  location = var.resoure_group_location
}

# 4. Output Values - Resource Group Names
output "resurce_group_names" {
  description = "Virutal Network Name"
  #value = azurerm_virtual_network.myvnet.name 
  # For this case we need to use the spalt operator to get the names of the resource
  value = azurerm_resource_group.myrg[*].name
  #sensitive = true
}

# 5. Output Values - Resource Group Ids
output "resurce_group_ids" {
  description = "Virutal Network Ids"
  #value = azurerm_virtual_network.myvnet.id
  # For this case we need to use the spalt operator to get the ids of the resource
  value = azurerm_resource_group.myrg[*].id
  #sensitive = true
}

