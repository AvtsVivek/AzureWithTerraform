output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "RgCreationVar" {
  value = var.resource_group_location
}

output "RgCreationVarObject" {
  value = azurerm_resource_group.rg_created_with_object
}