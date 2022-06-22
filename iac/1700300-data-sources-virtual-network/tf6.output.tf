## TEST DATASOURCES using OUTPUTS
# 1. Resource Group Name from Datasource
output "ds_rg_name" {
  description = "value of resource group name from datasource"
  value       = data.azurerm_resource_group.rgds.name
}

# 2. Resource Group Location from Datasource
output "ds_rg_location" {
  description = "value of resource group location from datasource"
  value       = data.azurerm_resource_group.rgds.location
}

# 3. Resource Group ID from Datasource
output "ds_rg_id" {
  description = "value of resource group id from datasource"
  value       = data.azurerm_resource_group.rgds.id
}
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscription#attributes-reference

## TEST DATASOURCES using OUTPUTS
# 1. Virtual Network Name from Datasource
output "ds_vnet_name" {
  description = "value of virtual network name from datasource"
  value       = data.azurerm_virtual_network.vnetds.name
}

# 2. Virtual Network ID from Datasource
output "ds_vnet_id" {
  description = "value of virtual network id from datasource"
  value       = data.azurerm_virtual_network.vnetds.id
}

# 3. Virtual Network address_space from Datasource
output "ds_vnet_address_space" {
  value = data.azurerm_virtual_network.vnetds.address_space
}

