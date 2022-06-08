# Resource-1: Azure Resource Group
resource "azurerm_resource_group" "myrg" {
  name     = var.resource-group-name
  location = var.resource-group-location
}