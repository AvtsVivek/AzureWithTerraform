
# Output - For Loop One Input and List Output with Resource Group Names 
output "resource_group_name_list" {
  description = "Virtual Network - For Loop One Input and List Output with VNET Name "
  value       = [for rg in azurerm_resource_group.myrg : rg.name]
}

# Output - For Loop One Input and List Output with Resource Group Ids
output "resource_group_id_list" {
  description = "Virtual Network - For Loop One Input and List Output with VNET Name "
  value       = [for rg in azurerm_resource_group.myrg : rg.id]
}
