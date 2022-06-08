# Resource-1: Azure Resource Group
resource "azurerm_resource_group" "myrg" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_resource_group" "myrg2" {
  name     = var.second_resource_group_name
  location = var.second_resource_group_location
}