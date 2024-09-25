# Resource-1: Azure Resource Group
resource "azurerm_resource_group" "myrg" {
  name     = var.resource_group_name
  location = var.resource-group-location
}