output "output_temp" {
  value = "here is the output"
}

output "resource_group_name" {
  value = azurerm_resource_group.myrg.name
}

output "resource_group_location" {
  value = azurerm_resource_group.myrg.location
}